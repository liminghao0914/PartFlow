.class Lwww/littlefoxes/reftime/fragment/StatisticsFragment$1;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/fragment/StatisticsFragment;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$1;->this$0:Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(LDBManager/MainActivityData/RecordList;LDBManager/MainActivityData/RecordList;)I
    .registers 5

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordSort()I

    move-result v0

    invoke-virtual {p2}, LDBManager/MainActivityData/RecordList;->getRecordSort()I

    move-result v1

    if-ge v0, v1, :cond_c

    const/4 v0, -0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x1

    goto :goto_b
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 11

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    check-cast p1, LDBManager/MainActivityData/RecordList;

    check-cast p2, LDBManager/MainActivityData/RecordList;

    invoke-virtual {p0, p1, p2}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment$1;->compare(LDBManager/MainActivityData/RecordList;LDBManager/MainActivityData/RecordList;)I

    move-result v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "compareDelta"

    const-string v6, "www.littlefoxes.reftime.fragment.StatisticsFragment$1"

    const-string v7, "(Ljava/lang/Object;Ljava/lang/Object;)I"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method
