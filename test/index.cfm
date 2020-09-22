<html>
<body>
  <ul>
    <li><a href="test_cases/classic_basic.cfm">Classic engine, basic</a></li>
    <li><a href="test_cases/classic_images.cfm">Classic engine, with images</a></li>
    <li><a href="test_cases/modern_basic.cfm">Modern engine, basic</a></li>
    <li><a href="test_cases/modern_section.cfm">Modern engine, with sections</a></li>
    <!--- <li><a href="classic_mixed_orientation.cfm">Classic engine, mixed orientation</a></li>
    <li><a href="modern_mixed_orientation.cfm">Modern engine, mixed orientation</a></li> --->
  </ul>

  <div style="display: flex;">
    <div style="text-align: center; width: 50%">Actual PDF Output</div>
    <div style="text-align: center; width: 50%">Expected Output (screenshot)</div>
  </div>

  <script>
    var body = document.querySelector('body');

    document.querySelectorAll('li').forEach(li => {
      var div = document.createElement('div');
      div.style.display = 'flex';

      var iframe = document.createElement('iframe');
      iframe.src = li.querySelector('a').href;
      iframe.style.width = '50%';
      iframe.style.height = '1100px';
      div.appendChild(iframe);

      var img = document.createElement('img');
      var imgName = li.querySelector('a').href
        .replace(/^.*\//, '')
        .replace(/cfm/, 'png');
      img.src = `expected_output/${imgName}`;
      img.style.display = 'inline-block';
      img.style.width = '50%';
      img.style.maxWidth = '870px';
      div.appendChild(img);

      body.append(div);
    });
  </script>
</body>
</html>
