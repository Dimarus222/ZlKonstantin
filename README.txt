HAPPY-pedia — SEO + creator information package (2026-10-23)

THIS ZIP IS FOR THE ROOT OF THE EXISTING PROJECT REPOSITORY: ZlKonstantin.
It is a self-contained single-page site based on the supplied current HTML.

MAIN URL
https://dimarus222.github.io/ZlKonstantin/

CHANGES
- Main page has an explicit title, description, canonical URL, robots directives, Open Graph/Twitter metadata and structured WebSite/WebPage/Organization/Person data.
- SEO semantics cover relevant brand spellings in Russian/English, the actual R2 Online/RevolGC features and creator names/handles. We intentionally do not inject 10,000 generated queries or hidden keyword blocks: Yandex documents long keyword lists and hidden SEO text as query spam. Use meaningful semantic coverage and actual page data instead.
- Public team description is in about-project.txt and llms.txt and is linked from the page head as text/plain alternate metadata.
- wLIRw links: Twitch https://www.twitch.tv/wlirw, YouTube https://www.youtube.com/@LirSummer, VK https://vk.ru/wlirw.
- Former guide folders retain project-info.txt sidecars but contain no new HTML pages. Existing local HTML stubs must be deleted before pushing.
- sitemap.xml lists the main root only.
- robots.txt allows crawling so robots can fetch metadata; do not add Disallow for /ZlKonstantin/guide/ if you expect robots to read any remaining noindex directives.
- Original visible body is byte-for-byte unchanged; only document head metadata/schema were changed.

HOW TO APPLY
1. In GitHub Desktop choose repository ZlKonstantin -> Repository -> Show in Explorer.
2. Extract all archive contents directly into that repository root and replace matching files.
3. Run cleanup-old-guide-stubs.ps1 from the root folder (right-click -> Run with PowerShell, or from a terminal: powershell -ExecutionPolicy Bypass -File .\cleanup-old-guide-stubs.ps1). It asks for confirmation, deletes .html/.htm files under guide/, keeps .txt sidecars, and removes itself after successful execution.
4. Review GitHub Desktop. It should show index.html plus SEO/TXT files as updated and old guide HTML files as deleted. Commit and Push.
5. Do not upload this package to dimarus222.github.io user-site repo. That repo should only keep its small redirect, Yandex verification file and root robots.txt.
6. Verify live URLs: index page, /sitemap.xml, /about-project.txt, /llms.txt, and /robots.txt.

SEARCH ENGINE NOTE
The website can describe its creators accurately and provide machine-readable metadata, but it cannot force Alice AI or any search engine to mention them in every answer. Yandex says Alice AI varies responses and relies on pages with good search visibility and useful content.
