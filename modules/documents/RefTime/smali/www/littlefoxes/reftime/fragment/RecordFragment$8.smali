.class Lwww/littlefoxes/reftime/fragment/RecordFragment$8;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/fragment/RecordFragment;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$8;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-static {p2}, LDBManager/DBHelper/UserSettingHelper;->UpdateCountDownTime(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$8;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->userSettingDataMessage:LDBManager/Database/UserSettingData;

    invoke-virtual {v2, p2}, LDBManager/Database/UserSettingData;->setCountdownTime(Z)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$8;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v2, v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;->adapter:LRecycleViewHelper/RecycleViewAdapter;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RecordFragment$8;->this$0:Lwww/littlefoxes/reftime/fragment/RecordFragment;

    iget-object v3, v3, Lwww/littlefoxes/reftime/fragment/RecordFragment;->userSettingDataMessage:LDBManager/Database/UserSettingData;

    invoke-virtual {v2, v3}, LRecycleViewHelper/RecycleViewAdapter;->SetCounting(LDBManager/Database/UserSettingData;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onCheckedChangedDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RecordFragment$8"

    const-string v6, "(Landroid/widget/CompoundButton;Z)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
