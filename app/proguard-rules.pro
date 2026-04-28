# Keep WebView JS interface methods (none used now, but safe)
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
