.class Lwww/littlefoxes/reftime/fragment/StatisticsFragment$4;
.super Landroid/webkit/WebViewClient;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$4;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

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
    invoke-super {p0, p1, p2}, Landroid/webkit/WebViewClient;->onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onPageFinishedDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.StatisticsFragment$4"

    const-string v6, "(Landroid/webkit/WebView;Ljava/lang/String;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
