.class public Lwww/littlefoxes/reftime/update/UpdateActivity;
.super Landroid/support/v7/app/AppCompatActivity;


# instance fields
.field linearLayout:Landroid/widget/LinearLayout;

.field needUpdate:Z

.field private serverVersion:Ljava/lang/String;

.field textView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, "1.3.1"

    iput-object v0, p0, Lwww/littlefoxes/reftime/update/UpdateActivity;->serverVersion:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lwww/littlefoxes/reftime/update/UpdateActivity;->needUpdate:Z

    return-void
.end method

.method private initView()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const v2, 0x7f090168

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/update/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lwww/littlefoxes/reftime/update/UpdateActivity;->linearLayout:Landroid/widget/LinearLayout;

    const v2, 0x7f09016a

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/update/UpdateActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/update/UpdateActivity;->textView:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/update/UpdateActivity;->linearLayout:Landroid/widget/LinearLayout;

    new-instance v3, Lwww/littlefoxes/reftime/update/UpdateActivity$1;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/update/UpdateActivity$1;-><init>(Lwww/littlefoxes/reftime/update/UpdateActivity;)V

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initViewDelta"

    const-string v5, "www.littlefoxes.reftime.update.UpdateActivity"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v2, 0x7f0c0026

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/update/UpdateActivity;->setContentView(I)V

    const/4 v2, 0x1

    const v3, 0x7f060096

    invoke-static {p0, v2, v3}, LOSHelper/StatusBarUtil;->setStatusBarMode(Landroid/app/Activity;ZI)V

    invoke-direct {p0}, Lwww/littlefoxes/reftime/update/UpdateActivity;->initView()V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/update/UpdateActivity;->getIntent()Landroid/content/Intent;

    move-result-object v3

    const-string v4, "update"

    invoke-virtual {v3, v4, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v4

    const-string v5, "serverVersion"

    invoke-virtual {v3, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lwww/littlefoxes/reftime/update/UpdateActivity;->serverVersion:Ljava/lang/String;

    if-gez v4, :cond_42

    iget-object v3, p0, Lwww/littlefoxes/reftime/update/UpdateActivity;->textView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v2, p0, Lwww/littlefoxes/reftime/update/UpdateActivity;->needUpdate:Z

    :goto_33
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onCreateDelta"

    const-string v5, "www.littlefoxes.reftime.update.UpdateActivity"

    const-string v6, "(Landroid/os/Bundle;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_42
    iget-object v2, p0, Lwww/littlefoxes/reftime/update/UpdateActivity;->textView:Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V

    iput-boolean v6, p0, Lwww/littlefoxes/reftime/update/UpdateActivity;->needUpdate:Z

    goto :goto_33
.end method
