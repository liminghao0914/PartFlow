.class Lwww/littlefoxes/reftime/fragment/StatisticsFragment$3;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

.field final synthetic val$string:Ljava/lang/String;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;Ljava/lang/String;)V
    .registers 3

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$3;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    iput-object p2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$3;->val$string:Ljava/lang/String;

    invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V

    return-void
.end method


# virtual methods
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    :try_start_4
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$3;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_d} :catch_35

    const-string v4, "javascript:getData("

    :try_start_f
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$3;->val$string:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_17
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_17} :catch_35

    const-string v4, ");"

    :try_start_19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LJsonHelper/MyWebView;->loadUrl(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_19 .. :try_end_23} :catch_35

    :goto_23
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onPageFinishedDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment$3"

    const-string v6, "(Landroid/webkit/WebView;Ljava/lang/String;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :catch_35
    move-exception v2

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$3;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    iget-object v3, v3, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, LJsonHelper/MyWebView;->clearCache(Z)V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$3;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    iget-object v3, v3, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->chartWebView:LJsonHelper/MyWebView;

    const-string v4, "file:///android_asset/echart_no_data.html"

    invoke-virtual {v3, v4}, LJsonHelper/MyWebView;->loadUrl(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_23
.end method
