.class Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$2;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$2;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 11

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    check-cast p1, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    check-cast p2, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {p0, p1, p2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$2;->compare(Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "compareDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView$2"

    const-string v7, "(Ljava/lang/Object;Ljava/lang/Object;)I"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method public compare(Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)I
    .registers 11

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-virtual {p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getStartTime()F

    move-result v2

    invoke-virtual {p2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getStartTime()F

    move-result v3

    cmpg-float v2, v2, v3

    if-gez v2, :cond_20

    const/4 v2, -0x1

    :goto_11
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "compareDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.MyRePlanView$2"

    const-string v7, "(Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)I"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2

    :cond_20
    const/4 v2, 0x1

    goto :goto_11
.end method
