HAPPY-pedia — SEO + lightweight terminal-start screen package

Files
- index.html — current optimized interactive site, SEO metadata, structured data and small terminal-style startup overlay.
- assets/ — source site artwork and icons. No existing image was re-encoded or reduced.
- assets/happy-pedia-social-preview.png — Open Graph/Twitter share preview.
- guide/ — crawlable, human-readable landing pages for farm, PTS calculator, pets, weapons, jewelry, each sphere type and updates.
- robots.txt — allows normal crawling and points crawlers to sitemap.xml.
- sitemap.xml — lists the homepage and guide pages.

Publish
1. Unzip the archive.
2. Upload/commit index.html, robots.txt, sitemap.xml, the entire assets/ directory and entire guide/ directory to the repository's published root. Keep directory names intact.
3. The canonical URL and sitemap currently target the URL in the supplied PageSpeed report:
   https://dimarus222.github.io/ZlKonstantin/
   If the actual public site is a GitVerse Pages domain instead, update this base URL in canonical/og:url/json-ld metadata, guide-page metadata, robots.txt and sitemap.xml before publishing. Do not leave two active hosts declaring each other as canonical by accident.
4. GitHub Pages project-site caveat: robots.txt is standardized at the origin root, not inside a project subdirectory. Keep this robots.txt file in the package, but also copy its three lines into https://dimarus222.github.io/robots.txt in the account-level Pages repository if you control it. If you cannot edit the origin root, submit the sitemap URL directly in the webmaster tools.
5. In Google Search Console, add the exact URL-prefix property, verify ownership, submit https://dimarus222.github.io/ZlKonstantin/sitemap.xml, then inspect the homepage and request indexing. Add the same site in Yandex Webmaster and submit its sitemap.
6. After publication, check that /sitemap.xml, /guide/ and one category page return HTTP 200. Re-run PageSpeed on the published URL.

About the terminal start screen
- It fades out after the inline interface has initialized (DOMContentLoaded) or after a 6.5-second safety timeout.
- It does not wait for Google Sheets. The sheet synchronization remains asynchronous so a slow third-party request cannot hold the entire page behind the loader.
- The overlay is a presentation effect, not a performance fix by itself. Keeping it short avoids deliberately waiting for every non-critical resource.

SEO notes
- The landing pages are intended as useful content, not hidden keyword pages. They link into the interactive site and have unique titles/descriptions, canonical URLs, Open Graph metadata and structured WebPage/BreadcrumbList data.
- Search engines decide when/if to crawl and index pages. No metadata or sitemap can guarantee immediate ranking.
