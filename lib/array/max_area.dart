import 'dart:math';

int maxArea(List<int> height) {
  var left = 0;
  var right = height.length - 1;
  var most = 0;

  while (left <= right) {
    most = max(most, min(height[left], height[right]) * (right - left));
    if (height[left] < height[right]) {
      left += 1;
    } else {
      right -= 1;
    }
  }

  return most;
}
