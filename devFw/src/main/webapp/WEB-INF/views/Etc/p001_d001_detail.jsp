<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="contextPath" value="${pageContext.request.contextPath}" />
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="${contextPath }/resources/css/detail.css">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.2.2/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
<link
	href="https://fonts.googleapis.com/css?family=Cinzel:400,700|Do+Hyeon|Merriweather|Noto+Sans+KR&display=swap&subset=korean"
	rel="stylesheet">
</head>
<body>
	<!-- 메뉴사이드바랑 컨텐츠 ------------------------------------------------------------------------------------------------------------------------------------------>
	<div class="row">
		<div class="col-sm-3">
			<div class="toc">
				<ul>
				
					<li><a href="#intro">Intro</a></li>
					<li><a href="#dev">Developer Mode</a>
						<ul>
							<li><a href="#dev-edit-html">Edit HTML</a></li>
							<li><a href="#dev-element-classes">Element Classes</a></li>
							<li><a href="#dev-slide-classes">Slide Classes</a></li>
							<li><a href="#dev-export-html">Export HTML</a></li>
						</ul></li>
					<li><a href="#css">CSS Editor</a>
						<ul>
							<li><a href="#css-fonts">Custom Fonts</a></li>
							<li><a href="#css-developer-mode">Developer Mode</a></li>
							<li><a href="#css-examples">Examples</a></li>
						</ul></li>
				</ul>
				<svg class="toc-marker" width="200" height="200"
					xmlns="http://www.w3.org/2000/svg">
    <path stroke="#444" stroke-width="3" fill="transparent"
						stroke-dasharray="0, 0, 0, 1000" stroke-linecap="round"
						stroke-linejoin="round" transform="translate(-0.5, -0.5)" />
  </svg>
			</div>
		</div>


		<div class="col-sm-9">
			<article class="contents">
				<section id="intro">
					<h2>Progress Nav</h2>
					<p>This page demonstrates an idea for how progress can be
						visualized inside of a standard page nav. Scroll the page and note
						how the marker animates to highlight all of the sections that are
						currently on screen.</p>
					<p>
						The rest of the content below is taken from <a
							href="https://slides.com/developers" target="_top">slides.com/developers</a>.
						Take a look at that to see how the progress nav looks on a real
						page.
					</p>
					<p>
						Created by Hakim El Hattab | <a href="http://hakim.se"
							target="_top">hakim.se</a> | <a
							href="https://twitter.com/hakimel" target="_top">@hakimel</a>
					</p>
					<h2>Slides for Developers</h2>
					<p>
						We strive to make Slides a great and flexible tool for developers.
						Presentations created on Slides are HTML documents under the hood,
						so generally anything that HTML can do, Slides can do. We make it
						easy to access and edit the underlying HTML and CSS through the <a
							href="#dev">Developer Mode</a>.
					</p>
					<p>There's also an API for creating new presentations with
						preset content and we're aiming to add additional APIs in the
						future.</p>
				</section>

				<section>
					<div id="dev">
						<h2>Developer Mode</h2>
						<p>The Slides editor has a developer mode which is useful if
							you know a bit of HTML and CSS. With this mode active you will be
							able to modify the underlying HTML of your deck, allowing you to
							make adjustments that the Slides editor does not provide
							interface options for.</p>
						<p>To enable the developer mode open the editor settings in
							the bottom left corner:</p>
						<img class="developer-image"
							src="https://static.slid.es.s3.amazonaws.com/site/developers/slides-developer-mode-1.png">
					</div>

					<div id="dev-edit-html">
						<h3>Editing HTML</h3>
						<p>The per-slide HTML editor can be accessed from the slide
							options area. It gives you raw access to the current slide's
							HTML, allowing you to change anything you like. Note that some
							elements, such as &lt;script&gt; and &lt;link&gt;, are not
							allowed for security reasons.﻿</p>

						<img class="developer-image"
							src="https://static.slid.es.s3.amazonaws.com/site/developers/slides-developer-mode-2.png">
					</div>

					<div id="dev-element-classes">
						<h3>
							Element Classes <a href="/pricing" class="header-secondary-text">(Requires
								Pro)</a>
						</h3>
						<p>
							As a paying Slides customer you have access to the <a href="#css">CSS
								editor</a> which allows you to add custom styles to your deck. By
							turning on the developer mode a new "class name" field will
							appear for any block that you focus. This allows you to easily
							target a specific element with your CSS.
						</p>
						<p>Here's an example that defines an "upside-down" class using
							custom CSS and applies it to a text block.</p>
						<pre class="code-block" data-highlight-theme="github-gist">
					<code class="hljs css">.upside-down {
    transform: scale( 1, -1 );
}</code>
				</pre>

						<img class="developer-image"
							src="https://static.slid.es.s3.amazonaws.com/site/developers/slides-developer-mode-3.png">
					</div>

					<div id="dev-slide-classes">
						<h3>
							Slide Classes <a href="/pricing" class="header-secondary-text">(Requires
								Pro)</a>
						</h3>
						<p>Just like you can add custom classes to individual elements
							it's also possible to add custom classes at the slide level. This
							can used to apply broader changes to the whole slide like
							inverting text and icon colors or changing the slide transition.</p>
						<img class="developer-image"
							src="https://static.slid.es.s3.amazonaws.com/site/developers/slides-developer-mode-4.png">
						<p>Under the hood the slide background element is separate
							from the slide itself. Here are two examples showing how you'd
							target the slide contents or slide background using a custom
							class called "night-sky":</p>

						<pre class="code-block" data-highlight-theme="github-gist">
					<code class="hljs css">// Targets the slide contents
.slides .night-sky svg path {
    fill: yellow;
}

// Target the slide background
.backgrounds .night-sky {
    background: linear-gradient(0deg, #141528, #0b1bb2);
}</code>
				</pre>

						<img class="developer-image"
							src="https://static.slid.es.s3.amazonaws.com/site/developers/slides-developer-mode-5.png">
					</div>

					<div id="dev-export-html">
						<h3>Export HTML</h3>
						<p>You can access the complete HTML for all slides in your
							deck ﻿inside of the export panel, under "Export to reveal.js"﻿.
							This provides a way of exporting your deck markup and the core
							Slides styles to reveal.js. There are a few limitations with
							exporting this way but it should provide a good starting point.</p>

						<img class="developer-image"
							src="https://static.slid.es.s3.amazonaws.com/site/developers/slides-developer-mode-6.png">
					</div>

				</section>

				<section>
					<div id="css">
						<h2>
							CSS Editor <a href="/pricing" class="header-secondary-text">(Requires
								Pro)</a>
						</h2>
						<p>The CSS editor lets you author custom styles for your
							presentation with a real-time preview of the result. It's
							available as an option inside of the Style panel of the
							presentation editor.</p>
						<p>
							The editor preprocesses styles using <a
								href="http://lesscss.org/">LESS</a>, though you're free to write
							plain CSS as well. We apply the styles in real-time as you type
							so there's no need to leave the editor or even press a refresh
							button to see what you're getting. Note that when your styles are
							saved they will be automatically wrapped in a ".reveal {}"
							selector to avoid conflicts with other page styles.
						</p>
					</div>
					<div id="css-fonts">
						<h3>Custom Fonts</h3>
						<p>
							You can load custom fonts from Typekit and Google fonts and apply
							them using custom CSS. <a
								href="http://help.slides.com/knowledgebase/articles/1077976-custom-fonts-pro">Find
								out more</a>.
						</p>
					</div>
					<div id="css-developer-mode">
						<h3>Developer Mode</h3>
						<p>
							If you turn on the <a href="#dev">developer mode</a> you can also
							add custom classes to any focused element. This is a convenient
							way to easily apply your CSS to specific elements.
						</p>
					</div>

					<div id="css-examples">
						<h3>Examples</h3>
						<pre class="code-block" data-highlight-theme="github-gist">
					<code class="hljs css">// Change presentation background
&amp; {
    background: #a83239;
}

// Change color of body text
.slides {
    color: #009999;
}

// Turn text white if the slide has a dark background
.has-dark-background {
    color: #fff;
}

// Add a blue border to all slides (each slide is a &lt;section&gt;)
.slides section {
    outline: 1px solid blue;
}

// Add a red border to all vertical stacks of slides
.slides section.stack {
    outline: 1px solid red;
}<br>
// Include a custom font<br>@font-face {<br>&nbsp; font-family: "Cabin Sketch";<br>&nbsp; src: url("https://s3.amazonaws.com/static.slid.es/fonts/cabinsketch/cabinsketch-regular.woff") format("woff"),<br>&nbsp; &nbsp; &nbsp; &nbsp;url("https://s3.amazonaws.com/static.slid.es/fonts/cabinsketch/cabinsketch-regular.ttf") format("truetype");<br>}
<br>.slides h1, .slides h2, .slides h3 {<br>&nbsp; &nbsp; font-family: "Cabin Sketch";<br>}


// Change color of controls and progress bar
﻿@interactiveColor: rgb(200,105,119);

.progress span {
    background: @interactiveColor !important;
}

.controls .navigate-left {
    border-right-color: @interactiveColor !important;
}
.controls .navigate-right {
    border-left-color: @interactiveColor !important;
}
.controls .navigate-up {
    border-bottom-color: @interactiveColor !important;
}
.controls .navigate-down {
    border-top-color: @interactiveColor !important;
}</code>
				</pre>
					</div>

					<p>Here's where you can access the CSS editor from inside of
						the Style panel:</p>
					<img class="developer-image"
						src="https://static.slid.es.s3.amazonaws.com/site/developers/slides-css-editor-1.png">

					<p>A screenshot of the editor:</p>
					﻿<img class="developer-image"
						src="https://static.slid.es.s3.amazonaws.com/site/developers/slides-css-editor-2.png">

				</section>
			</article>
		</div>
	</div>
</body>
<script>
	var toc = document.querySelector('.toc');
	var tocPath = document.querySelector('.toc-marker path');
	var tocItems;

	// Factor of screen size that the element must cross
	// before it's considered visible
	var TOP_MARGIN = 0.1, BOTTOM_MARGIN = 0.2;

	var pathLength;

	var lastPathStart, lastPathEnd;

	window.addEventListener('resize', drawPath, false);
	window.addEventListener('scroll', sync, false);

	drawPath();

	function drawPath() {

		tocItems = [].slice.call(toc.querySelectorAll('li'));

		// Cache element references and measurements
		tocItems = tocItems.map(function(item) {
			var anchor = item.querySelector('a');
			var target = document.getElementById(anchor.getAttribute('href')
					.slice(1));

			return {
				listItem : item,
				anchor : anchor,
				target : target
			};
		});

		// Remove missing targets
		tocItems = tocItems.filter(function(item) {
			return !!item.target;
		});

		var path = [];
		var pathIndent;

		tocItems
				.forEach(function(item, i) {

					var x = item.anchor.offsetLeft - 5, y = item.anchor.offsetTop, height = item.anchor.offsetHeight;

					if (i === 0) {
						path.push('M', x, y, 'L', x, y + height);
						item.pathStart = 0;
					} else {
						// Draw an additional line when there's a change in
						// indent levels
						if (pathIndent !== x)
							path.push('L', pathIndent, y);

						path.push('L', x, y);

						// Set the current path so that we can measure it
						tocPath.setAttribute('d', path.join(' '));
						item.pathStart = tocPath.getTotalLength() || 0;

						path.push('L', x, y + height);
					}

					pathIndent = x;

					tocPath.setAttribute('d', path.join(' '));
					item.pathEnd = tocPath.getTotalLength();

				});

		pathLength = tocPath.getTotalLength();

		sync();

	}

	function sync() {

		var windowHeight = window.innerHeight;

		var pathStart = pathLength, pathEnd = 0;

		var visibleItems = 0;

		tocItems.forEach(function(item) {

			var targetBounds = item.target.getBoundingClientRect();

			if (targetBounds.bottom > windowHeight * TOP_MARGIN
					&& targetBounds.top < windowHeight * (1 - BOTTOM_MARGIN)) {
				pathStart = Math.min(item.pathStart, pathStart);
				pathEnd = Math.max(item.pathEnd, pathEnd);

				visibleItems += 1;

				item.listItem.classList.add('visible');
			} else {
				item.listItem.classList.remove('visible');
			}

		});

		// Specify the visible path or hide the path altogether
		// if there are no visible items
		if (visibleItems > 0 && pathStart < pathEnd) {
			if (pathStart !== lastPathStart || pathEnd !== lastPathEnd) {
				tocPath.setAttribute('stroke-dashoffset', '1');
				tocPath.setAttribute('stroke-dasharray', '1, ' + pathStart
						+ ', ' + (pathEnd - pathStart) + ', ' + pathLength);
				tocPath.setAttribute('opacity', 1);
			}
		} else {
			tocPath.setAttribute('opacity', 0);
		}

		lastPathStart = pathStart;
		lastPathEnd = pathEnd;

	}
</script>


</html>