.class public Lwww/littlefoxes/reftime/fragment/RePlanFragment;
.super Landroid/support/v4/app/Fragment;

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field addDate:Ljava/lang/String;

.field addEditPlan:Landroid/widget/LinearLayout;

.field addRePlanSortListAdapter:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;

.field calendarLayout:Lcom/haibin/calendarview/CalendarLayout;

.field calendarView:Lcom/haibin/calendarview/CalendarView;

.field cancelAddPlan:Landroid/widget/TextView;

.field certainAddPlan:Landroid/widget/TextView;

.field private colorCheck:I

.field private colorUnCheck:I

.field currentDay:Ljava/lang/String;

.field deletePlan:Landroid/widget/TextView;

.field private editPlanRecordList:Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

.field fiveBtn:Landroid/widget/TextView;

.field fiveChecked:Z

.field fourBtn:Landroid/widget/TextView;

.field fourChecked:Z

.field list:Ljava/util/List;

.field mContext:Landroid/content/Context;

.field myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

.field myTimePickViewStart:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

.field myTimePickViewStop:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

.field noneBtn:Landroid/widget/TextView;

.field noneChecked:Z

.field oneBtn:Landroid/widget/TextView;

.field oneChecked:Z

.field planDetailCycle:Landroid/widget/TextView;

.field planDetailName:Landroid/widget/TextView;

.field planDetailTime:Landroid/widget/TextView;

.field planDetailUnicode:Landroid/widget/TextView;

.field rePlanClick:Landroid/widget/ImageView;

.field rePlanData:LDBManager/Database/RePlanData;

.field recyclerView:Landroid/support/v7/widget/RecyclerView;

.field scrollView:Landroid/support/v4/widget/NestedScrollView;

.field sevenBtn:Landroid/widget/TextView;

.field sevenChecked:Z

.field showDate:Landroid/widget/TextView;

.field showPlanDetail:Landroid/widget/LinearLayout;

.field sixBtn:Landroid/widget/TextView;

.field sixChecked:Z

.field startHour:Ljava/lang/String;

.field startMinute:Ljava/lang/String;

.field private status:I

.field stopHour:Ljava/lang/String;

.field stopMinute:Ljava/lang/String;

.field threeBtn:Landroid/widget/TextView;

.field threeChecked:Z

.field twoBtn:Landroid/widget/TextView;

.field twoChecked:Z


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v1, 0x0

    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    iput-boolean v1, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->oneChecked:Z

    iput-boolean v1, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->twoChecked:Z

    iput-boolean v1, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->threeChecked:Z

    iput-boolean v1, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fourChecked:Z

    iput-boolean v1, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fiveChecked:Z

    iput-boolean v1, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sixChecked:Z

    iput-boolean v1, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sevenChecked:Z

    iput-boolean v1, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneChecked:Z

    const-string v0, "12"

    iput-object v0, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->startHour:Ljava/lang/String;

    const-string v0, "00"

    iput-object v0, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->startMinute:Ljava/lang/String;

    const-string v0, "12"

    iput-object v0, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopHour:Ljava/lang/String;

    const-string v0, "30"

    iput-object v0, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopMinute:Ljava/lang/String;

    invoke-static {}, LDateHelper/DateHelper;->getNowDate()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addDate:Ljava/lang/String;

    const-string v0, "#FFFFFF"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorCheck:I

    const-string v0, "#333333"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    iput v1, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->status:I

    const/4 v0, 0x0

    iput-object v0, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->editPlanRecordList:Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    return-void
.end method

.method private AddFinish()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    if-nez v2, :cond_24

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0085

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "AddFinishDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_24
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->startHour:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->startMinute:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopHour:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopMinute:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_5e

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0f009a

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto :goto_15

    :cond_5e
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addDate:Ljava/lang/String;

    invoke-virtual {v2, v3}, LDBManager/Database/RePlanData;->setAddDate(Ljava/lang/String;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->startHour:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->startMinute:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-00-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->currentDay:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LDBManager/Database/RePlanData;->setStartTime(Ljava/lang/String;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopHour:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopMinute:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-00-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->currentDay:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LDBManager/Database/RePlanData;->setStopTime(Ljava/lang/String;)V

    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->CalculateCycle()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    invoke-static {v2}, LDBManager/DBHelper/ReplanHelper;->AddReplanData(LDBManager/Database/RePlanData;)Z

    move-result v2

    if-eqz v2, :cond_170

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addDate:Ljava/lang/String;

    invoke-static {v2}, LDBManager/DBHelper/ReplanHelper;->GetRecordListFromRePlan(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->list:Ljava/util/List;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->list:Ljava/util/List;

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->setmRecordList(Ljava/util/List;)V

    const/4 v2, 0x0

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addRePlanSortListAdapter:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->InitData()V

    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->initBtn()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0f005e

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStart:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->reInitData()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStop:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->reInitData()V

    :try_start_ee
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopMinute:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopHour:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v4, 0x17

    if-ge v5, v4, :cond_151

    add-int/lit8 v4, v5, 0x1

    move v3, v2

    :goto_101
    iget-object v6, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStart:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v6, v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->setViewMinute(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopMinute:Ljava/lang/String;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->startMinute:Ljava/lang/String;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStart:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v2, v5}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->setViewHour(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopHour:Ljava/lang/String;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->startHour:Ljava/lang/String;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStop:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->setViewMinute(I)V

    const/16 v5, 0xa

    if-ge v3, v5, :cond_154

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_121
    .catch Ljava/lang/Exception; {:try_start_ee .. :try_end_121} :catch_14b

    const-string v6, "0"

    :try_start_123
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_129
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopMinute:Ljava/lang/String;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStop:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v2, v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->setViewHour(I)V

    if-ge v4, v5, :cond_162

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_13b
    .catch Ljava/lang/Exception; {:try_start_123 .. :try_end_13b} :catch_14b

    const-string v3, "0"

    :try_start_13d
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_143
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopHour:Ljava/lang/String;
    :try_end_149
    .catch Ljava/lang/Exception; {:try_start_13d .. :try_end_149} :catch_14b

    goto/16 :goto_15

    :catch_14b
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_15

    :cond_151
    const/16 v3, 0x3b

    goto :goto_101

    :cond_154
    :try_start_154
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_159
    .catch Ljava/lang/Exception; {:try_start_154 .. :try_end_159} :catch_14b

    const-string v6, ""

    :try_start_15b
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_129

    :cond_162
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_167
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_167} :catch_14b

    const-string v3, ""

    :try_start_169
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_16f
    .catch Ljava/lang/Exception; {:try_start_169 .. :try_end_16f} :catch_14b

    goto :goto_143

    :cond_170
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0099

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_15
.end method

.method private CalculateCycle()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneChecked:Z

    if-eqz v2, :cond_1d

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, LDBManager/Database/RePlanData;->setCycle(I)V

    :goto_e
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "CalculateCycleDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_1d
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    iget-boolean v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->oneChecked:Z

    invoke-virtual {v2, v3}, LDBManager/Database/RePlanData;->setCycle0(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    iget-boolean v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->twoChecked:Z

    invoke-virtual {v2, v3}, LDBManager/Database/RePlanData;->setCycle1(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    iget-boolean v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->threeChecked:Z

    invoke-virtual {v2, v3}, LDBManager/Database/RePlanData;->setCycle2(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    iget-boolean v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fourChecked:Z

    invoke-virtual {v2, v3}, LDBManager/Database/RePlanData;->setCycle3(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    iget-boolean v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fiveChecked:Z

    invoke-virtual {v2, v3}, LDBManager/Database/RePlanData;->setCycle4(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    iget-boolean v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sixChecked:Z

    invoke-virtual {v2, v3}, LDBManager/Database/RePlanData;->setCycle5(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    iget-boolean v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sevenChecked:Z

    invoke-virtual {v2, v3}, LDBManager/Database/RePlanData;->setCycle6(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, LDBManager/Database/RePlanData;->setCycle(I)V

    goto :goto_e
.end method

.method private CanclePick()V
    .registers 8

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->status:I

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStart:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->reInitData()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStop:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->reInitData()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->showPlanDetail:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->scrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v2, v4}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->certainAddPlan:Landroid/widget/TextView;

    const v3, 0x7f0f005d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iput v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->status:I

    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->initBtn()V

    const/4 v2, 0x0

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addRePlanSortListAdapter:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->InitData()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->list:Ljava/util/List;

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->setmRecordList(Ljava/util/List;)V

    :cond_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "CanclePickDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private EditFinish()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->startHour:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->startMinute:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopHour:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopMinute:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v2

    const/4 v3, -0x1

    if-le v2, v3, :cond_4e

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0f009a

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    :goto_3f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "EditFinishDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_4e
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->editPlanRecordList:Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    if-eqz v2, :cond_c4

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    if-nez v3, :cond_5d

    new-instance v3, LDBManager/Database/RePlanData;

    invoke-direct {v3, v2}, LDBManager/Database/RePlanData;-><init>(Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)V

    iput-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    :cond_5d
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->startHour:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->startMinute:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-00-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->currentDay:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LDBManager/Database/RePlanData;->setStartTime(Ljava/lang/String;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopHour:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopMinute:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "-00-"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->currentDay:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, LDBManager/Database/RePlanData;->setStopTime(Ljava/lang/String;)V

    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->CalculateCycle()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->editPlanRecordList:Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-static {v2, v3}, LDBManager/DBHelper/ReplanHelper;->UpdateRePlanData(LDBManager/Database/RePlanData;Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)Z

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addDate:Ljava/lang/String;

    invoke-static {v2}, LDBManager/DBHelper/ReplanHelper;->GetRecordListFromRePlan(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->list:Ljava/util/List;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->list:Ljava/util/List;

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->setmRecordList(Ljava/util/List;)V

    :cond_c4
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->showPlanDetail:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->scrollView:Landroid/support/v4/widget/NestedScrollView;

    invoke-virtual {v2, v5}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->certainAddPlan:Landroid/widget/TextView;

    const v3, 0x7f0f005d

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    iput v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->status:I

    iput-object v6, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    iput-object v6, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->editPlanRecordList:Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addRePlanSortListAdapter:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->InitData()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->initMyView()V

    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->initBtn()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStart:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->reInitData()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStop:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->reInitData()V

    :try_start_f5
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopMinute:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopHour:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    const/16 v4, 0x17

    if-ge v5, v4, :cond_158

    add-int/lit8 v4, v5, 0x1

    move v3, v2

    :goto_108
    iget-object v6, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStart:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v6, v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->setViewMinute(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopMinute:Ljava/lang/String;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->startMinute:Ljava/lang/String;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStart:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v2, v5}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->setViewHour(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopHour:Ljava/lang/String;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->startHour:Ljava/lang/String;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStop:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->setViewMinute(I)V

    const/16 v5, 0xa

    if-ge v3, v5, :cond_15b

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_128
    .catch Ljava/lang/Exception; {:try_start_f5 .. :try_end_128} :catch_152

    const-string v6, "0"

    :try_start_12a
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_130
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopMinute:Ljava/lang/String;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStop:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v2, v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->setViewHour(I)V

    if-ge v4, v5, :cond_169

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_142
    .catch Ljava/lang/Exception; {:try_start_12a .. :try_end_142} :catch_152

    const-string v3, "0"

    :try_start_144
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_14a
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopHour:Ljava/lang/String;
    :try_end_150
    .catch Ljava/lang/Exception; {:try_start_144 .. :try_end_150} :catch_152

    goto/16 :goto_3f

    :catch_152
    move-exception v2

    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_3f

    :cond_158
    const/16 v3, 0x3b

    goto :goto_108

    :cond_15b
    :try_start_15b
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_160
    .catch Ljava/lang/Exception; {:try_start_15b .. :try_end_160} :catch_152

    const-string v6, ""

    :try_start_162
    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    goto :goto_130

    :cond_169
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
    :try_end_16e
    .catch Ljava/lang/Exception; {:try_start_162 .. :try_end_16e} :catch_152

    const-string v3, ""

    :try_start_170
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
    :try_end_176
    .catch Ljava/lang/Exception; {:try_start_170 .. :try_end_176} :catch_152

    goto :goto_14a
.end method

.method private EditPage()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStart:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->reInitData()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStop:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->reInitData()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->showPlanDetail:Landroid/widget/LinearLayout;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->scrollView:Landroid/support/v4/widget/NestedScrollView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/support/v4/widget/NestedScrollView;->setVisibility(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->certainAddPlan:Landroid/widget/TextView;

    const v3, 0x7f0f0015

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    const/4 v2, 0x2

    iput v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->status:I

    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->initEditView()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "EditPageDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private GetCycle(I)Ljava/lang/String;
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const-string v2, ""

    if-nez p1, :cond_1e

    const v2, 0x7f0f0077

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_f
    :goto_f
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "GetCycleDelta"

    const-string v6, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v7, "(I)Ljava/lang/String;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2

    :cond_1e
    rem-int/lit8 v3, p1, 0xa

    const/4 v4, 0x1

    if-ne v3, v4, :cond_3e

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f009f

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_3e
    div-int/lit8 v3, p1, 0xa

    rem-int/lit8 v5, v3, 0xa

    if-ne v5, v4, :cond_5f

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f00a2

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_5f
    div-int/lit8 v3, v3, 0xa

    rem-int/lit8 v5, v3, 0xa

    if-ne v5, v4, :cond_80

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f00a3

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_80
    div-int/lit8 v3, v3, 0xa

    rem-int/lit8 v5, v3, 0xa

    if-ne v5, v4, :cond_a1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f00a4

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_a1
    div-int/lit8 v3, v3, 0xa

    rem-int/lit8 v5, v3, 0xa

    if-ne v5, v4, :cond_c2

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f009e

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_c2
    div-int/lit8 v3, v3, 0xa

    rem-int/lit8 v5, v3, 0xa

    if-ne v5, v4, :cond_e3

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f00a0

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :cond_e3
    div-int/lit8 v3, v3, 0xa

    rem-int/lit8 v3, v3, 0xa

    if-ne v3, v4, :cond_f

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const v2, 0x7f0f00a1

    invoke-virtual {p0, v2}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " "

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_f
.end method

.method private GetCycleBtn(I)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->initBtn()V

    const v2, 0x7f0800b5

    const/4 v3, 0x1

    if-nez p1, :cond_b4

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iput-boolean v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneChecked:Z

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    iget v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorCheck:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :goto_1b
    rem-int/lit8 v4, p1, 0xa

    if-ne v4, v3, :cond_2d

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->oneBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iput-boolean v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->oneChecked:Z

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->oneBtn:Landroid/widget/TextView;

    iget v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorCheck:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_2d
    div-int/lit8 v4, p1, 0xa

    rem-int/lit8 v5, v4, 0xa

    if-ne v5, v3, :cond_41

    iget-object v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->twoBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iput-boolean v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->twoChecked:Z

    iget-object v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->twoBtn:Landroid/widget/TextView;

    iget v6, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorCheck:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_41
    div-int/lit8 v4, v4, 0xa

    rem-int/lit8 v5, v4, 0xa

    if-ne v5, v3, :cond_55

    iget-object v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->threeBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iput-boolean v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->threeChecked:Z

    iget-object v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->threeBtn:Landroid/widget/TextView;

    iget v6, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorCheck:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_55
    div-int/lit8 v4, v4, 0xa

    rem-int/lit8 v5, v4, 0xa

    if-ne v5, v3, :cond_69

    iget-object v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fourBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iput-boolean v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fourChecked:Z

    iget-object v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fourBtn:Landroid/widget/TextView;

    iget v6, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorCheck:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_69
    div-int/lit8 v4, v4, 0xa

    rem-int/lit8 v5, v4, 0xa

    if-ne v5, v3, :cond_7d

    iget-object v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fiveBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iput-boolean v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fiveChecked:Z

    iget-object v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fiveBtn:Landroid/widget/TextView;

    iget v6, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorCheck:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7d
    div-int/lit8 v4, v4, 0xa

    rem-int/lit8 v5, v4, 0xa

    if-ne v5, v3, :cond_91

    iget-object v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sixBtn:Landroid/widget/TextView;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iput-boolean v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sixChecked:Z

    iget-object v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sixBtn:Landroid/widget/TextView;

    iget v6, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorCheck:I

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_91
    div-int/lit8 v4, v4, 0xa

    rem-int/lit8 v4, v4, 0xa

    if-ne v4, v3, :cond_a5

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sevenBtn:Landroid/widget/TextView;

    invoke-virtual {v4, v2}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iput-boolean v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sevenChecked:Z

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sevenBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_a5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "GetCycleBtnDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "(I)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_b4
    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    const v5, 0x7f0800b4

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setBackgroundResource(I)V

    const/4 v4, 0x0

    iput-boolean v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneChecked:Z

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    iget v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_1b
.end method

.method private SetRePlanData(LDBManager/Database/RePlanData;)V
    .registers 3

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanData:LDBManager/Database/RePlanData;

    invoke-virtual {p1}, LDBManager/Database/RePlanData;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, LDBManager/Database/RePlanData;->setName(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$002(Lwww/littlefoxes/reftime/fragment/RePlanFragment;I)I
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput p1, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->status:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$002Delta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "(Lwww/littlefoxes/reftime/fragment/RePlanFragment;I)I"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return p1
.end method

.method static synthetic access$102(Lwww/littlefoxes/reftime/fragment/RePlanFragment;Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->editPlanRecordList:Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$102Delta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "(Lwww/littlefoxes/reftime/fragment/RePlanFragment;Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object p1
.end method

.method static synthetic access$200(Lwww/littlefoxes/reftime/fragment/RePlanFragment;Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-direct {p0, p1}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->showEditDetil(Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$200Delta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "(Lwww/littlefoxes/reftime/fragment/RePlanFragment;Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$300(Lwww/littlefoxes/reftime/fragment/RePlanFragment;)V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->CanclePick()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$300Delta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "(Lwww/littlefoxes/reftime/fragment/RePlanFragment;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method static synthetic access$400(Lwww/littlefoxes/reftime/fragment/RePlanFragment;LDBManager/Database/RePlanData;)V
    .registers 2

    invoke-direct {p0, p1}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->SetRePlanData(LDBManager/Database/RePlanData;)V

    return-void
.end method

.method private getTimeMinAndHour(F)Ljava/lang/String;
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const/high16 v2, 0x42700000    # 60.0f

    mul-float/2addr v2, p1

    float-to-int v4, v2

    div-int/lit8 v5, v4, 0x3c

    const/16 v6, 0xa

    if-ge v5, v6, :cond_57

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "0"

    :goto_15
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    rem-int/lit8 v4, v4, 0x3c

    if-ge v4, v6, :cond_5f

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    :goto_2a
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getTimeMinAndHourDelta"

    const-string v6, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v7, "(F)Ljava/lang/String;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2

    :cond_57
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, ""

    goto :goto_15

    :cond_5f
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    goto :goto_2a
.end method

.method private initBtn()V
    .registers 8

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->oneBtn:Landroid/widget/TextView;

    const v3, 0x7f0800b4

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->oneBtn:Landroid/widget/TextView;

    iget v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->twoBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->twoBtn:Landroid/widget/TextView;

    iget v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->threeBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->threeBtn:Landroid/widget/TextView;

    iget v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fourBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fourBtn:Landroid/widget/TextView;

    iget v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fiveBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fiveBtn:Landroid/widget/TextView;

    iget v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sixBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sixBtn:Landroid/widget/TextView;

    iget v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sevenBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sevenBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    const v3, 0x7f0800b5

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    const/4 v2, 0x1

    iput-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneChecked:Z

    iput-boolean v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->oneChecked:Z

    iput-boolean v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->twoChecked:Z

    iput-boolean v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->threeChecked:Z

    iput-boolean v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fourChecked:Z

    iput-boolean v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fiveChecked:Z

    iput-boolean v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sixChecked:Z

    iput-boolean v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sevenChecked:Z

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initBtnDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private initEditView()V
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->editPlanRecordList:Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getStartTime()F

    move-result v2

    const/high16 v3, 0x42700000    # 60.0f

    mul-float/2addr v2, v3

    float-to-int v4, v2

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->editPlanRecordList:Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getStopTime()F

    move-result v2

    mul-float/2addr v2, v3

    float-to-int v3, v2

    rem-int/lit8 v5, v3, 0x3c

    const/16 v6, 0xa

    if-ge v5, v6, :cond_a7

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_29
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopMinute:Ljava/lang/String;

    div-int/lit8 v3, v3, 0x3c

    if-ge v3, v6, :cond_b6

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "0"

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_40
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->stopHour:Ljava/lang/String;

    div-int/lit8 v7, v4, 0x3c

    if-ge v7, v6, :cond_c5

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "0"

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_57
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->startHour:Ljava/lang/String;

    rem-int/lit8 v4, v4, 0x3c

    if-ge v4, v6, :cond_d3

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "0"

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    :goto_6e
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->startMinute:Ljava/lang/String;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStart:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v2, v7}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->setViewHour(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStart:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v2, v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->setViewMinute(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStop:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->setViewHour(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStop:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v2, v5}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->setViewMinute(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->editPlanRecordList:Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getCycle()I

    move-result v2

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->GetCycleBtn(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addRePlanSortListAdapter:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->editPlanRecordList:Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->SetClickItem(Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initEditViewDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_a7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_29

    :cond_b6
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto/16 :goto_40

    :cond_c5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v8, ""

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_57

    :cond_d3
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v6, ""

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_6e
.end method

.method private initView(Landroid/view/View;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const v2, 0x7f0900fd

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/NestedScrollView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->scrollView:Landroid/support/v4/widget/NestedScrollView;

    const v2, 0x7f0900e8

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanClick:Landroid/widget/ImageView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->rePlanClick:Landroid/widget/ImageView;

    new-instance v3, Lwww/littlefoxes/reftime/fragment/RePlanFragment$1;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment$1;-><init>(Lwww/littlefoxes/reftime/fragment/RePlanFragment;)V

    invoke-virtual {v2, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090033

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->cancelAddPlan:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->cancelAddPlan:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090039

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->certainAddPlan:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->certainAddPlan:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900d2

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->planDetailName:Landroid/widget/TextView;

    const v2, 0x7f0900d3

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->planDetailTime:Landroid/widget/TextView;

    const v2, 0x7f0900d1

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->planDetailCycle:Landroid/widget/TextView;

    const v2, 0x7f0900d4

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->planDetailUnicode:Landroid/widget/TextView;

    const v2, 0x7f090051

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->deletePlan:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->deletePlan:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09001b

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addEditPlan:Landroid/widget/LinearLayout;

    const v2, 0x7f090119

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->showPlanDetail:Landroid/widget/LinearLayout;

    const v2, 0x7f0900ae

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addDate:Ljava/lang/String;

    if-nez v2, :cond_ab

    invoke-static {}, LDateHelper/DateHelper;->getNowDate()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addDate:Ljava/lang/String;

    :cond_ab
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addDate:Ljava/lang/String;

    invoke-static {v2}, LDBManager/DBHelper/ReplanHelper;->GetRecordListFromRePlan(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->list:Ljava/util/List;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->list:Ljava/util/List;

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->setmRecordList(Ljava/util/List;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    new-instance v3, Lwww/littlefoxes/reftime/fragment/RePlanFragment$2;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment$2;-><init>(Lwww/littlefoxes/reftime/fragment/RePlanFragment;)V

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->SetMyRePlanClick(Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView$MyRePlanClick;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addDate:Ljava/lang/String;

    const-string v3, "-"

    invoke-virtual {v2, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x2

    aget-object v2, v2, v3

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->currentDay:Ljava/lang/String;

    const v2, 0x7f090116

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->showDate:Landroid/widget/TextView;

    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v2

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v5

    invoke-virtual {v2, v3}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->showDate:Landroid/widget/TextView;

    add-int/2addr v2, v4

    invoke-static {v5, v2}, LDateHelper/DateHelper;->getPrPlanMonth(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v2, 0x7f090031

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/haibin/calendarview/CalendarLayout;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->calendarLayout:Lcom/haibin/calendarview/CalendarLayout;

    const v2, 0x7f090032

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/haibin/calendarview/CalendarView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->calendarView:Lcom/haibin/calendarview/CalendarView;

    const v2, 0x7f090146

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStart:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStart:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    new-instance v3, Lwww/littlefoxes/reftime/fragment/RePlanFragment$3;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment$3;-><init>(Lwww/littlefoxes/reftime/fragment/RePlanFragment;)V

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->setOnHourChangeListener(Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$OnHourChangeListener;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStart:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    new-instance v3, Lwww/littlefoxes/reftime/fragment/RePlanFragment$4;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment$4;-><init>(Lwww/littlefoxes/reftime/fragment/RePlanFragment;)V

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->setOnMinuteChangeListener(Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$OnMinuteChangeListener;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStart:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->setViewMinute(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStart:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    const/16 v3, 0xc

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->setViewHour(I)V

    const v2, 0x7f090147

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStop:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStop:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    new-instance v4, Lwww/littlefoxes/reftime/fragment/RePlanFragment$5;

    invoke-direct {v4, p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment$5;-><init>(Lwww/littlefoxes/reftime/fragment/RePlanFragment;)V

    invoke-virtual {v2, v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->setOnMinuteChangeListener(Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$OnMinuteChangeListener;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStop:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    const/16 v4, 0x1e

    invoke-virtual {v2, v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->setViewMinute(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStop:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->setViewHour(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myTimePickViewStop:Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;

    new-instance v3, Lwww/littlefoxes/reftime/fragment/RePlanFragment$6;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment$6;-><init>(Lwww/littlefoxes/reftime/fragment/RePlanFragment;)V

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView;->setOnHourChangeListener(Lwww/littlefoxes/reftime/RePlanViewHelper/MyTimePickView$OnHourChangeListener;)V

    new-instance v3, Landroid/support/v7/widget/LinearLayoutManager;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->mContext:Landroid/content/Context;

    invoke-direct {v3, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    const v2, 0x7f09001d

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    new-instance v2, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addDate:Ljava/lang/String;

    invoke-static {v3}, LDBManager/DBHelper/SortHelper;->GetAllRelanList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    iget-object v4, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->mContext:Landroid/content/Context;

    invoke-direct {v2, v3, v4}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addRePlanSortListAdapter:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->recyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addRePlanSortListAdapter:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addRePlanSortListAdapter:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;

    new-instance v3, Lwww/littlefoxes/reftime/fragment/RePlanFragment$7;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment$7;-><init>(Lwww/littlefoxes/reftime/fragment/RePlanFragment;)V

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->SetRePlanSelect(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$RePlanSelect;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->calendarView:Lcom/haibin/calendarview/CalendarView;

    new-instance v3, Lwww/littlefoxes/reftime/fragment/RePlanFragment$8;

    invoke-direct {v3, p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment$8;-><init>(Lwww/littlefoxes/reftime/fragment/RePlanFragment;)V

    invoke-virtual {v2, v3}, Lcom/haibin/calendarview/CalendarView;->setOnCalendarSelectListener(Lcom/haibin/calendarview/CalendarView$OnCalendarSelectListener;)V

    const v2, 0x7f0900c6

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->oneBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->oneBtn:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090163

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->twoBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->twoBtn:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090144

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->threeBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->threeBtn:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09007c

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fourBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fourBtn:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f090079

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fiveBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fiveBtn:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09011e

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sixBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sixBtn:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f09010f

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sevenBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sevenBtn:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v2, 0x7f0900bd

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "initViewDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "(Landroid/view/View;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private showEditDetil(Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->planDetailName:Landroid/widget/TextView;

    invoke-virtual {p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->planDetailTime:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getStartTime()F

    move-result v4

    invoke-direct {p0, v4}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->getTimeMinAndHour(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " - "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getStopTime()F

    move-result v4

    invoke-direct {p0, v4}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->getTimeMinAndHour(F)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->planDetailUnicode:Landroid/widget/TextView;

    new-instance v3, Ljava/lang/String;

    invoke-virtual {p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getRecordUnicode()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/String;-><init>([C)V

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->planDetailCycle:Landroid/widget/TextView;

    invoke-virtual {p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;->getCycle()I

    move-result v3

    invoke-direct {p0, v3}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->GetCycle(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "showEditDetilDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "(Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method


# virtual methods
.method public RefrashData()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    if-eqz v2, :cond_22

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addDate:Ljava/lang/String;

    invoke-static {v2}, LDBManager/DBHelper/ReplanHelper;->GetRecordListFromRePlan(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->list:Ljava/util/List;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->list:Ljava/util/List;

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->setmRecordList(Ljava/util/List;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addRePlanSortListAdapter:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addDate:Ljava/lang/String;

    invoke-static {v3}, LDBManager/DBHelper/SortHelper;->GetAllRelanList(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->RefrashData(Ljava/util/List;)V

    :cond_22
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "RefrashDataDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onActivityCreatedDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "(Landroid/os/Bundle;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 11

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-super {p0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->onActivityResult(IILandroid/content/Intent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onActivityResultDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "(IILandroid/content/Intent;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-static {}, Lcom/injarctor/InJARctor;->DeviceInfoReader()V

    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->mContext:Landroid/content/Context;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onAttachDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "(Landroid/content/Context;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 9

    .prologue
    const/4 v5, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    nop

    nop

    nop

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v2

    const v3, 0x7f0800b5

    const v4, 0x7f0800b4

    sparse-switch v2, :sswitch_data_1fa

    :cond_15
    :goto_15
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onClickDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "(Landroid/view/View;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :sswitch_24
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->twoChecked:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->twoChecked:Z

    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->twoChecked:Z

    if-eqz v2, :cond_49

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->twoBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->twoBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iput-boolean v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneChecked:Z

    goto :goto_15

    :cond_49
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->twoBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->twoBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_15

    :sswitch_56
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->threeChecked:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->threeChecked:Z

    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->threeChecked:Z

    if-eqz v2, :cond_7b

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->threeBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->threeBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iput-boolean v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneChecked:Z

    goto :goto_15

    :cond_7b
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->threeBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->threeBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto :goto_15

    :sswitch_88
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sixChecked:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sixChecked:Z

    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sixChecked:Z

    if-eqz v2, :cond_ae

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sixBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sixBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iput-boolean v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneChecked:Z

    goto/16 :goto_15

    :cond_ae
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sixBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sixBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_15

    :sswitch_bc
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sevenChecked:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sevenChecked:Z

    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sevenChecked:Z

    if-eqz v2, :cond_e2

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sevenBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sevenBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iput-boolean v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneChecked:Z

    goto/16 :goto_15

    :cond_e2
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sevenBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->sevenBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_15

    :sswitch_f0
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->oneChecked:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->oneChecked:Z

    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->oneChecked:Z

    if-eqz v2, :cond_116

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->oneBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->oneBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iput-boolean v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneChecked:Z

    goto/16 :goto_15

    :cond_116
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->oneBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->oneBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_15

    :sswitch_124
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneChecked:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneChecked:Z

    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneChecked:Z

    if-eqz v2, :cond_13f

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->initBtn()V

    goto/16 :goto_15

    :cond_13f
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_15

    :sswitch_14d
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fourChecked:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fourChecked:Z

    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fourChecked:Z

    if-eqz v2, :cond_173

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fourBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fourBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iput-boolean v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneChecked:Z

    goto/16 :goto_15

    :cond_173
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fourBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fourBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_15

    :sswitch_181
    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fiveChecked:Z

    xor-int/lit8 v2, v2, 0x1

    iput-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fiveChecked:Z

    iget-boolean v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fiveChecked:Z

    if-eqz v2, :cond_1a7

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fiveBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fiveBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    iput-boolean v5, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->noneChecked:Z

    goto/16 :goto_15

    :cond_1a7
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fiveBtn:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setBackgroundResource(I)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->fiveBtn:Landroid/widget/TextView;

    iget v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->colorUnCheck:I

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setTextColor(I)V

    goto/16 :goto_15

    :sswitch_1b5
    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->editPlanRecordList:Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;

    if-eqz v2, :cond_15

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addDate:Ljava/lang/String;

    invoke-static {v2, v3}, LDBManager/DBHelper/ReplanHelper;->DeleteRePlanData(Lwww/littlefoxes/reftime/RePlanViewHelper/ShowPlanRecordList;Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_15

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->addDate:Ljava/lang/String;

    invoke-static {v2}, LDBManager/DBHelper/ReplanHelper;->GetRecordListFromRePlan(Ljava/lang/String;)Ljava/util/List;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->list:Ljava/util/List;

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->myRePlanView:Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;

    iget-object v3, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->list:Ljava/util/List;

    invoke-virtual {v2, v3}, Lwww/littlefoxes/reftime/RePlanViewHelper/MyRePlanView;->setmRecordList(Ljava/util/List;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->mContext:Landroid/content/Context;

    const v3, 0x7f0f0098

    invoke-static {v2, v3, v5}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v2

    invoke-virtual {v2}, Landroid/widget/Toast;->show()V

    goto/16 :goto_15

    :sswitch_1de
    iget v2, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->status:I

    packed-switch v2, :pswitch_data_228

    goto/16 :goto_15

    :pswitch_1e5
    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->AddFinish()V

    goto/16 :goto_15

    :pswitch_1ea
    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->EditFinish()V

    goto/16 :goto_15

    :pswitch_1ef
    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->EditPage()V

    goto/16 :goto_15

    :sswitch_1f4
    invoke-direct {p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->CanclePick()V

    goto/16 :goto_15

    nop

    :sswitch_data_1fa
    .sparse-switch
        0x7f090033 -> :sswitch_1f4
        0x7f090039 -> :sswitch_1de
        0x7f090051 -> :sswitch_1b5
        0x7f090079 -> :sswitch_181
        0x7f09007c -> :sswitch_14d
        0x7f0900bd -> :sswitch_124
        0x7f0900c6 -> :sswitch_f0
        0x7f09010f -> :sswitch_bc
        0x7f09011e -> :sswitch_88
        0x7f090144 -> :sswitch_56
        0x7f090163 -> :sswitch_24
    .end sparse-switch

    :pswitch_data_228
    .packed-switch 0x0
        :pswitch_1e5
        :pswitch_1ef
        :pswitch_1ea
    .end packed-switch
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 12

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const v2, 0x7f0c003c

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->initView(Landroid/view/View;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "onCreateViewDelta"

    const-string v6, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v7, "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onSaveInstanceStateDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "(Landroid/os/Bundle;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public onStart()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-virtual {p0}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->RefrashData()V

    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onStart()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "onStartDelta"

    const-string v5, "www.littlefoxes.reftime.fragment.RePlanFragment"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
