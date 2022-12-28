.class LDateHelper/PickerView$MyTimerTask;
.super Ljava/util/TimerTask;
.source "PickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDateHelper/PickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "MyTimerTask"
.end annotation


# instance fields
.field handler:Landroid/os/Handler;

.field final synthetic this$0:LDateHelper/PickerView;


# direct methods
.method public constructor <init>(LDateHelper/PickerView;Landroid/os/Handler;)V
    .locals 0

    .line 271
    iput-object p1, p0, LDateHelper/PickerView$MyTimerTask;->this$0:LDateHelper/PickerView;

    invoke-direct {p0}, Ljava/util/TimerTask;-><init>()V

    .line 272
    iput-object p2, p0, LDateHelper/PickerView$MyTimerTask;->handler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 277
    iget-object v0, p0, LDateHelper/PickerView$MyTimerTask;->handler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
