;; 言語設定とか
;;(set-language-environment "Japanese")
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-buffer-file-coding-system 'utf-8)
(setq default-buffer-file-coding-system 'utf-8)
 
;; フォント設定
;; ここが、emacs23じゃないとうまいこと行かなかった。。
(set-face-attribute 'default nil
  :family "VL Gothic"
  :height 125)

;; 起動時のフレームサイズ
(setq initial-frame-alist '((width . 158) (height . 27)))
 
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

;;; Visual Basic mode
(add-to-list 'load-path "~/.emacs.d/vbm")
(load-library "visual-basic-mode")
(add-to-list 'auto-mode-alist
   '("\\.\\(frm\\|bas\\|cls\\|vbs\\)$" . visual-basic-mode))

;;; Twittering mode
(add-to-list 'load-path "~/.emacs.d/twitter")
(require 'twittering-mode)
(setq twittering-username "__de_dwinter")

;; clipboard 連携
(setq x-select-enable-clipboard t)

;; howm setting
(setq howm-menu-lang 'ja)
(require 'howm-mode)
(global-set-key "\C-c,," 'howm-menu)
(mapc
 (lambda (f)
   (autoload f
     "howm" "Hitori Otegaru Wiki Modoki" t))
 '(howm-menu howm-list-all howm-list-recent
            howm-list-grep howm-create
             howm-keyword-to-kill-ring
	     howm-list-todo
	     howm-schedule-sort-by-date
	     ))

 
;; 何か最後がいいらしい
(set-default-coding-systems 'utf-8)

;;(howm-menu)
