HAPPY-pedia — MAIN PROJECT ZIP (ZlKonstantin repository)

This package is based on the user's supplied final archive: HAPPY-pedia-main-noindex-guide-ai-text(1).zip.
The page's visible body and inline behavior are preserved byte-for-byte; only head SEO metadata/structured data were replaced/updated, and public text/support files were added or refreshed.

DEPLOYMENT
1. Extract this ZIP into the local root of the GitHub repository named ZlKonstantin; allow replacing files.
2. Run in PowerShell from the repository root:
   powershell -ExecutionPolicy Bypass -File .\cleanup-old-guide-stubs.ps1
   Confirm only by typing DELETE STUBS. The script removes only the 13 known guide\...\index.html stubs and preserves TXT files.
3. Check GitHub Desktop. Confirm the intended deletions of guide HTML pages and additions/updates to the TXT, metadata, and favicon files. Commit and Push.
4. Also deploy the ROOT REPOSITORY package, because search crawlers associate favicons with the host root (dimarus222.github.io). The main HTML links to that host-root favicon.

FILES / SEO
- index.html: bilingual RU/EN title/description and relevant search aliases; canonical; Open Graph/Twitter; favicon links; expanded Schema.org WebSite, WebPage, Organization and separate Person nodes for ZLKonstantin, Dmitry Zhdanov (STALKER) and wLIRw.
- about-project.txt, llms.txt, team.json: public bilingual description and structured team information. Education details are explicitly marked as supplied by the project team, not independently verified.
- guide/**/project-info.txt: topic-specific bilingual text sidecars. Legacy HTML stubs are absent from this ZIP.
- favicon.ico, favicon.svg, favicon.png, apple-touch-icon.png and PNG sizes: based on the existing HAPPY-pedia HP mark already referenced by the user's source page.
- robots.txt allows crawling; sitemap.xml contains only the canonical interactive home page.
- yandex_3d9245927726bdb6.html and original assets are preserved.

IMPORTANT
The visible page/body has not been redesigned. There is no hidden body text. The metadata describes the site in Russian and English, while the visible interface remains Russian. A machine-readable metadata update cannot guarantee placement in every Alice AI answer: search ranking and useful, expert content still matter.
The file robots.txt inside this project folder is not the host-level robots file for the GitHub Pages hostname. The root repository package carries the host-level robots.txt and favicon.
