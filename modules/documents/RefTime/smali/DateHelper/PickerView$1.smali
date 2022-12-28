.class LDateHelper/PickerView$1;
.super Landroid/os/Handler;
.source "PickerView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = LDateHelper/PickerView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:LDateHelper/PickerView;


# direct methods
.method constructor <init>(LDateHelper/PickerView;)V
    .locals 0

    .line 59
    iput-object p1, p0, LDateHelper/PickerView$1;->this$0:LDateHelper/PickerView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4

    .line 63
    iget-object p1, p0, LDateHelper/PickerView$1;->this$0:LDateHelper/PickerView;

    invoke-static {p1}, LDateHelper/PickerView;->access$000(LDateHelper/PickerView;)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float p1, p1, v0

    if-gez p1, :cond_0

    .line 64
    iget-object p1, p0, LDateHelper/PickerView$1;->this$0:LDateHelper/PickerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LDateHelper/PickerView;->access$002(LDateHelper/PickerView;F)F

    .line 65
    iget-object p1, p0, LDateHelper/PickerView$1;->this$0:LDateHelper/PickerView;

    invoke-static {p1}, LDateHelper/PickerView;->access$100(LDateHelper/PickerView;)LDateHelper/PickerView$MyTimerTask;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 66
    iget-object p1, p0, LDateHelper/PickerView$1;->this$0:LDateHelper/PickerView;

    invoke-static {p1}, LDateHelper/PickerView;->access$100(LDateHelper/PickerView;)LDateHelper/PickerView$MyTimerTask;

    move-result-object p1

    invoke-virtual {p1}, LDateHelper/PickerView$MyTimerTask;->cancel()Z

    .line 67
    iget-object p1, p0, LDateHelper/PickerView$1;->this$0:LDateHelper/PickerView;

    const/4 v0, 0x0

    invoke-static {p1, v0}, LDateHelper/PickerView;->access$102(LDateHelper/PickerView;LDateHelper/PickerView$MyTimerTask;)LDateHelper/PickerView$MyTimerTask;

    .line 68
    iget-object p1, p0, LDateHelper/PickerView$1;->this$0:LDateHelper/PickerView;

    invoke-static {p1}, LDateHelper/PickerView;->access$200(LDateHelper/PickerView;)V

    goto :goto_0

    .line 72
    :cond_0
    iget-object p1, p0, LDateHelper/PickerView$1;->this$0:LDateHelper/PickerView;

    invoke-static {p1}, LDateHelper/PickerView;->access$000(LDateHelper/PickerView;)F

    move-result v1

    iget-object v2, p0, LDateHelper/PickerView$1;->this$0:LDateHelper/PickerView;

    invoke-static {v2}, LDateHelper/PickerView;->access$000(LDateHelper/PickerView;)F

    move-result v2

    iget-object v3, p0, LDateHelper/PickerView$1;->this$0:LDateHelper/PickerView;

    invoke-static {v3}, LDateHelper/PickerView;->access$000(LDateHelper/PickerView;)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    div-float/2addr v2, v3

    mul-float v2, v2, v0

    sub-float/2addr v1, v2

    invoke-static {p1, v1}, LDateHelper/PickerView;->access$002(LDateHelper/PickerView;F)F

    .line 73
    :cond_1
    :goto_0
    iget-object p1, p0, LDateHelper/PickerView$1;->this$0:LDateHelper/PickerView;

    invoke-virtual {p1}, LDateHelper/PickerView;->invalidate()V

    return-void
.end method
