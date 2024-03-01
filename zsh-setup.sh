#!/bin/bash

# Обновление списка пакетов, если необходимо
sudo apt-get update

# Проверка и установка Zsh, если он еще не установлен
if ! type zsh > /dev/null; then
  sudo apt-get install -y zsh
else
  echo "Zsh уже установлен."
fi

# Установка Oh My Zsh, если она еще не выполнена
if [ ! -d "$HOME/.oh-my-zsh" ]; then
  sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"
else
  echo "Oh My Zsh уже установлен."
fi

# Клонирование zsh-autosuggestions, если оно еще не выполнено
if [ ! -d "${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions" ]; then
  git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-$HOME/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
else
  echo "zsh-autosuggestions уже склонирован."
fi
# Добавление плагина zsh-autosuggestions в .zshrc, если он там отсутствует
if ! grep -q "zsh-autosuggestions" $HOME/.zshrc; then
  echo "Добавление zsh-autosuggestions в .zshrc"
  # Добавляем zsh-autosuggestions к существующему списку плагинов
  sed -i "/^plugins=(/s/)$/ zsh-autosuggestions)/" $HOME/.zshrc
  # Возможно, потребуется обработать случай, когда в массиве уже есть другие плагины
else
  echo "zsh-autosuggestions уже добавлен в .zshrc."
fi

# Применение изменений в .zshrc
zsh