.class LTimeProgressBar/TimeProgressBar$1;
.super Landroid/os/Handler;
.source "TimeProgressBar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LTimeProgressBar/TimeProgressBar;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LTimeProgressBar/TimeProgressBar;


# direct methods
.method constructor <init>(LTimeProgressBar/TimeProgressBar;)V
    .locals 0

    .line 34
    iput-object p1, p0, LTimeProgressBar/TimeProgressBar$1;->this$0:LTimeProgressBar/TimeProgressBar;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3

    .line 37
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 38
    iget-object p1, p0, LTimeProgressBar/TimeProgressBar$1;->this$0:LTimeProgressBar/TimeProgressBar;

    invoke-virtual {p1}, LTimeProgressBar/TimeProgressBar;->invalidate()V

    .line 40
    iget-object p1, p0, LTimeProgressBar/TimeProgressBar$1;->this$0:LTimeProgressBar/TimeProgressBar;

    invoke-static {p1}, LTimeProgressBar/TimeProgressBar;->access$000(LTimeProgressBar/TimeProgressBar;)Landroid/os/Handler;

    move-result-object p1

    const/4 v0, 0x1

    const-wide/16 v1, 0x19

    invoke-virtual {p1, v0, v1, v2}, Landroid/os/Handler;->sendEmptyMessageDelayed(IJ)Z

    return-void
.end method
