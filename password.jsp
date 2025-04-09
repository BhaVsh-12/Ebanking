<!DOCTYPE html>
<html>
<head>
  <style>
    /* Define the animation */
    @keyframes myAnimation {
      0% { background-color: red; }
     
      }

    /* Apply the animation to an element */
    .box {
      width: 100px;
      height: 100px;
      background-color: red;
      animation-name: myAnimation;
      animation-duration: 3s;
      animation-timing-function: ease;
      animation-iteration-count: infinite;
    }
  </style>
</head>
<body>
  <div class="box"></div>
</body>
</html>
