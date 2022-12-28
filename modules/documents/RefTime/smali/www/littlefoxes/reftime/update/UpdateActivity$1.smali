.class Lwww/littlefoxes/reftime/update/UpdateActivity$1;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/update/UpdateActivity;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/update/UpdateActivity;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/update/UpdateActivity$1;->this$0:Lwww/littlefoxes/reftime/update/UpdateActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/update/UpdateActivity$1;->this$0:Lwww/littlefoxes/reftime/update/UpdateActivity;

    iget-boolean v2, v2, Lwww/littlefoxes/reftime/update/UpdateActivity;->needUpdate:Z

    if-eqz v2, :cond_2b

    const-string v2, "https://m.coolapk.com/mp/apk/report?apkname=com.example.mytime/"

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    new-instance v3, Landroid/content/Intent;

    const-string v4, "android.intent.action.VIEW"

    invoke-direct {v3, v4, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/update/UpdateActivity$1;->this$0:Lwww/littlefoxes/reftime/update/UpdateActivity;

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/update/UpdateActivity;->startActivity(Landroid/content/Intent;)V

    :goto_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onClickDelta"

    const-string v5, "www.littlefoxes.reftime.update.UpdateActivity$1"

    const-string v6, "(Landroid/view/View;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_2b
    iget-object v2, p0, Lwww/littlefoxes/reftime/update/UpdateActivity$1;->this$0:Lwww/littlefoxes/reftime/update/UpdateActivity;

    const-string v3, "\u5df2\u662f\u6700\u65b0\u7248\u672c"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_1c
.end method
