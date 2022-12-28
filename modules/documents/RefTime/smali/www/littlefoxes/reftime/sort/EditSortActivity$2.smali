.class Lwww/littlefoxes/reftime/sort/EditSortActivity$2;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/sort/EditSortActivity;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/sort/EditSortActivity;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/sort/EditSortActivity$2;->this$0:Lwww/littlefoxes/reftime/sort/EditSortActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onClickDelta"

    const-string v5, "www.littlefoxes.reftime.sort.EditSortActivity$2"

    const-string v6, "(Landroid/content/DialogInterface;I)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
