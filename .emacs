;; 言語設定とか
(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
 
;; フォント設定
;; ここが、emacs23じゃないとうまいこと行かなかった。。
(set-face-attribute 'default nil
  :family "VL Gothic"
  :height 90)

;; 起動時のフレームサイズ
(setq initial-frame-alist '((width . 160) (height . 29)))
 
;; テーマ読み込み
(require 'color-theme)
;; ここでテーマ設定、好きなものに変更
(color-theme-hober)
 
;; Interactively Do Things (highly recommended, but not strictly required)
;; (require 'ido)
;; (ido-mode t)
;; Rinari
(add-to-list 'load-path "~/.emacs.d/rinari")
(require 'rinari)
 
;; rhtml-mode
(add-to-list 'load-path "~/.emacs.d/rhtml")
(require 'rhtml-mode)
(add-hook 'rhtml-mode-hook
    (lambda () (rinari-launch)))

;; clipboard 連携
(setq x-select-enable-clipboard t)
 
;; 何か最後がいいらしい
(set-default-coding-systems 'utf-8)
