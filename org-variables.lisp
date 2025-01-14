(setq org-html-preamble-format '(("en"
                                  "<a target='_blank' href='https://t.me/zwwerg'><svg class='icon' id='icon-telegram' viewBox='0 0 300 300'><g id='XMLID_496_'><path d='M5.299,144.645l69.126,25.8l26.756,86.047c1.712,5.511,8.451,7.548,12.924,3.891l38.532-31.412 c4.039-3.291,9.792-3.455,14.013-0.391l69.498,50.457c4.785,3.478,11.564,0.856,12.764-4.926L299.823,29.22 c1.31-6.316-4.896-11.585-10.91-9.259L5.218,129.402C-1.783,132.102-1.722,142.014,5.299,144.645z M96.869,156.711l135.098-83.207 c2.428-1.491,4.926,1.792,2.841,3.726L123.313,180.87c-3.919,3.648-6.447,8.53-7.163,13.829l-3.798,28.146 c-0.503,3.758-5.782,4.131-6.819,0.494l-14.607-51.325C89.253,166.16,91.691,159.907,96.869,156.711z'></path></g></svg></a>
<a target='_blank' href='https://ch.linkedin.com/in/zsombor-lazar-58a083154'><svg class='icon' id='icon-linkedin' viewBox='0 0 56.693 56.693' enable-background='new 0 0 56.693 56.693' xml:space='preserve'><g><path d='M30.071,27.101v-0.077c-0.016,0.026-0.033,0.052-0.05,0.077H30.071z'></path><path d='M49.265,4.667H7.145c-2.016,0-3.651,1.596-3.651,3.563v42.613c0,1.966,1.635,3.562,3.651,3.562h42.12             c2.019,0,3.654-1.597,3.654-3.562V8.23C52.919,6.262,51.283,4.667,49.265,4.667z M18.475,46.304h-7.465V23.845h7.465V46.304z              M14.743,20.777h-0.05c-2.504,0-4.124-1.725-4.124-3.88c0-2.203,1.67-3.88,4.223-3.88c2.554,0,4.125,1.677,4.175,3.88             C18.967,19.052,17.345,20.777,14.743,20.777z M45.394,46.304h-7.465V34.286c0-3.018-1.08-5.078-3.781-5.078             c-2.062,0-3.29,1.389-3.831,2.731c-0.197,0.479-0.245,1.149-0.245,1.821v12.543h-7.465c0,0,0.098-20.354,0-22.459h7.465v3.179             c0.992-1.53,2.766-3.709,6.729-3.709c4.911,0,8.594,3.211,8.594,10.11V46.304z'></path></g></svg></a>
<a target='_blank' src=''><svg class='icon' id='icon-rss' viewBox='0 0 56.693 56.693' enable-background='new 0 0 56.693 56.693' xml:space='preserve'><path d='M3.428,31.085c6.19,0,12.009,2.418,16.382,6.816c4.381,4.398,6.793,10.256,6.793,16.492h9.539   c0-18.113-14.676-32.848-32.714-32.848V31.085z M3.443,14.174c22.061,0,40.01,18.047,40.01,40.231h9.539   c0-27.445-22.229-49.77-49.549-49.77V14.174z M16.634,47.741c0,3.648-2.959,6.607-6.607,6.607S3.42,51.39,3.42,47.741   c0-3.65,2.958-6.607,6.606-6.607S16.634,44.091,16.634,47.741z'></path></svg></a>"
                                  )))

(setq org-html-postamble-format '(("en"
                                   "<p class=\"author\">Author: %a</p>
<p class=\"date\">Date: %d</p>
<p class=\"creator\">%c</p>
<p class=\"validation\">%v</p>
<p><a href=\"/theindex.html\">Index</a></p>
<p><script src='https://utteranc.es/client.js'
          repo='zwwerg/zwwerg.github.io'
          issue-term='title'
          label='💬 Comment'
          theme='github-light'
          crossorigin='anonymous'
          async>
</script></p>
"
                                   )))

(setq css-styles (concat "<style>"
                         (get-string-from-file "./css/org.css")
                         (get-string-from-file "./css/social.css")
                         "</style>"))
(setq org-html-head-include-default-style nil)
(setq org-html-head css-styles)
(setq org-html-htmlize-output-type 'css)
(setq org-export-global-macros '(("ghuser" . "[[https://github.com/$1][/$1/]]")
                                 ("ghrepo" . "/[[https://github.com/$1/$2][$1/$2]]/")))
