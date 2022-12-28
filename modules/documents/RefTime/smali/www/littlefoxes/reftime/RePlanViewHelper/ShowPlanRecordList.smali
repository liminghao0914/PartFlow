.class public Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;
.super Ljava/lang/Object;


# instance fields
.field private cycle:I

.field private isSelect:Z

.field private recordId:I

.field private recordName:Ljava/lang/String;

.field private recordSort:I

.field private recordSortColor:Ljava/lang/String;

.field private recordSortColorTiming:Ljava/lang/String;

.field private recordSortName:Ljava/lang/String;

.field private recordUnicode:I

.field private showStart:F

.field private showStop:F

.field private startTime:F

.field private stopTime:F

.field private thisDate:Ljava/lang/String;

.field private width:F

.field private xOffset:F


# direct methods
.method public constructor <init>(LDBManager/MainActivityData/RecordList;)V
    .registers 5

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->startTime:F

    iput v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->stopTime:F

    iput v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordSort:I

    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->width:F

    iput v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->xOffset:F

    iput-boolean v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->isSelect:Z

    iput v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->cycle:I

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordId()I

    move-result v0

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordId:I

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordName:Ljava/lang/String;

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordUnicode()I

    move-result v0

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordUnicode:I

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordSort()I

    move-result v0

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordSort:I

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordSortColor()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordSortColor:Ljava/lang/String;

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordSortColorTiming()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordSortColorTiming:Ljava/lang/String;

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getRecordSortName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordSortName:Ljava/lang/String;

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->GetFloatTime(Ljava/lang/String;Z)F

    move-result v0

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->startTime:F

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getStopTime()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0, v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->GetFloatTime(Ljava/lang/String;Z)F

    move-result v0

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->stopTime:F

    invoke-virtual {p1}, LDBManager/MainActivityData/RecordList;->getCycle()I

    move-result v0

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->cycle:I

    iget v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->stopTime:F

    iget v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->startTime:F

    sub-float/2addr v0, v1

    sget v1, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->minTextHeight:F

    const/high16 v2, 0x42700000    # 60.0f

    div-float/2addr v1, v2

    cmpg-float v0, v0, v1

    if-gez v0, :cond_88

    iget v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->startTime:F

    sget v1, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->minTextHeight:F

    div-float/2addr v1, v2

    add-float/2addr v0, v1

    const v1, 0x41bcb852    # 23.59f

    cmpl-float v1, v0, v1

    if-ltz v1, :cond_81

    const/high16 v1, 0x41c00000    # 24.0f

    iput v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->showStop:F

    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->startTime:F

    sub-float v0, v2, v0

    add-float/2addr v0, v1

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->showStart:F

    :goto_80
    return-void

    :cond_81
    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->showStop:F

    iget v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->startTime:F

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->showStart:F

    goto :goto_80

    :cond_88
    iget v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->startTime:F

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->showStart:F

    iget v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->stopTime:F

    iput v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->showStop:F

    goto :goto_80
.end method

.method private GetFloatTime(Ljava/lang/String;Z)F
    .registers 11

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    if-eqz p1, :cond_37

    const-string v2, ""

    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_37

    const-string v2, "-"

    invoke-virtual {p1, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, v2, v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    int-to-float v3, v3

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    int-to-float v2, v2

    const/high16 v4, 0x42700000    # 60.0f

    div-float/2addr v2, v4

    add-float/2addr v2, v3

    :goto_28
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "GetFloatTimeDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v7, "(Ljava/lang/String;Z)F"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2

    :cond_37
    const/4 v2, 0x0

    goto :goto_28
.end method


# virtual methods
.method public getCycle()I
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->cycle:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getCycleDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v7, "()I"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method public getRecordId()I
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getRecordIdDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v7, "()I"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method public getRecordName()Ljava/lang/String;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getRecordNameDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v7, "()Ljava/lang/String;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method public getRecordSort()I
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordSort:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getRecordSortDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v7, "()I"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method public getRecordSortColor()Ljava/lang/String;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordSortColor:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getRecordSortColorDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v7, "()Ljava/lang/String;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method public getRecordSortColorTiming()Ljava/lang/String;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordSortColorTiming:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getRecordSortColorTimingDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v7, "()Ljava/lang/String;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method public getRecordSortName()Ljava/lang/String;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordSortName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getRecordSortNameDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v7, "()Ljava/lang/String;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method public getRecordUnicode()I
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordUnicode:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getRecordUnicodeDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v7, "()I"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method public getShowStart()F
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->showStart:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getShowStartDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v7, "()F"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method public getShowStop()F
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->showStop:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getShowStopDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v7, "()F"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method public getStartTime()F
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->startTime:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getStartTimeDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v7, "()F"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method public getStopTime()F
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->stopTime:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getStopTimeDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v7, "()F"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method public getWidth()F
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->width:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getWidthDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v7, "()F"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method public getxOffset()F
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->xOffset:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getxOffsetDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v7, "()F"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method public isSelect()Z
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->isSelect:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "isSelectDelta"

    const-string v6, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v7, "()Z"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method public setCycle(I)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->cycle:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setCycleDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v6, "(I)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setRecordId(I)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setRecordIdDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v6, "(I)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setRecordName(Ljava/lang/String;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setRecordNameDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v6, "(Ljava/lang/String;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setRecordSort(I)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordSort:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setRecordSortDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v6, "(I)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setRecordSortColor(Ljava/lang/String;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordSortColor:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setRecordSortColorDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v6, "(Ljava/lang/String;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setRecordSortColorTiming(Ljava/lang/String;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordSortColorTiming:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setRecordSortColorTimingDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v6, "(Ljava/lang/String;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setRecordSortName(Ljava/lang/String;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordSortName:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setRecordSortNameDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v6, "(Ljava/lang/String;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setRecordUnicode(I)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->recordUnicode:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setRecordUnicodeDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v6, "(I)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setSelect(Z)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-boolean p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->isSelect:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setSelectDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v6, "(Z)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setShowStart(F)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->showStart:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setShowStartDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v6, "(F)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setShowStop(F)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->showStop:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setShowStopDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v6, "(F)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setStartTime(F)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->startTime:F

    iput p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->showStart:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setStartTimeDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v6, "(F)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setStopTime(F)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->stopTime:F

    iput p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->showStop:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setStopTimeDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v6, "(F)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setWidth(F)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->width:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setWidthDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v6, "(F)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public setxOffset(F)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->xOffset:F

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setxOffsetDelta"

    const-string v5, "www.littlefoxes.reftime.RePlanViewHelper.ShowPlanRecordList"

    const-string v6, "(F)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
