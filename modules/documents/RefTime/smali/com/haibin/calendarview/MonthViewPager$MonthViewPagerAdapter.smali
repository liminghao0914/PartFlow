.class final Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "MonthViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haibin/calendarview/MonthViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "MonthViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haibin/calendarview/MonthViewPager;


# direct methods
.method private constructor <init>(Lcom/haibin/calendarview/MonthViewPager;)V
    .locals 0

    .line 588
    iput-object p1, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/haibin/calendarview/MonthViewPager;Lcom/haibin/calendarview/MonthViewPager$1;)V
    .locals 0

    .line 588
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;-><init>(Lcom/haibin/calendarview/MonthViewPager;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 629
    check-cast p3, Lcom/haibin/calendarview/BaseView;

    if-nez p3, :cond_0

    return-void

    .line 633
    :cond_0
    invoke-virtual {p3}, Lcom/haibin/calendarview/BaseView;->onDestroy()V

    .line 634
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 592
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/MonthViewPager;->access$700(Lcom/haibin/calendarview/MonthViewPager;)I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 597
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/MonthViewPager;->access$800(Lcom/haibin/calendarview/MonthViewPager;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p1, -0x2

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v4/view/PagerAdapter;->getItemPosition(Ljava/lang/Object;)I

    move-result p1

    :goto_0
    return p1
.end method

.method public instantiateItem(Landroid/view/ViewGroup;I)Ljava/lang/Object;
    .locals 7

    .line 607
    iget-object v0, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v0

    add-int/2addr v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0xc

    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v2

    add-int/2addr v0, v2

    .line 608
    iget-object v2, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v2

    add-int/2addr v2, p2

    sub-int/2addr v2, v1

    rem-int/lit8 v2, v2, 0xc

    add-int/2addr v2, v1

    .line 611
    :try_start_0
    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v3}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v3

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMonthViewClass()Ljava/lang/Class;

    move-result-object v3

    new-array v4, v1, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v6, 0x0

    aput-object v5, v4, v6

    invoke-virtual {v3, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v3

    .line 612
    new-array v1, v1, [Ljava/lang/Object;

    iget-object v4, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-virtual {v4}, Lcom/haibin/calendarview/MonthViewPager;->getContext()Landroid/content/Context;

    move-result-object v4

    aput-object v4, v1, v6

    invoke-virtual {v3, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseMonthView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 617
    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    iput-object v3, v1, Lcom/haibin/calendarview/BaseMonthView;->mMonthViewPager:Lcom/haibin/calendarview/MonthViewPager;

    .line 618
    iget-object v3, v3, Lcom/haibin/calendarview/MonthViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iput-object v3, v1, Lcom/haibin/calendarview/BaseMonthView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    .line 619
    iget-object v3, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {v3}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v3

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/BaseMonthView;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    .line 620
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/haibin/calendarview/BaseMonthView;->setTag(Ljava/lang/Object;)V

    .line 621
    invoke-virtual {v1, v0, v2}, Lcom/haibin/calendarview/BaseMonthView;->initMonthWithDate(II)V

    .line 622
    iget-object p2, p0, Lcom/haibin/calendarview/MonthViewPager$MonthViewPagerAdapter;->this$0:Lcom/haibin/calendarview/MonthViewPager;

    invoke-static {p2}, Lcom/haibin/calendarview/MonthViewPager;->access$100(Lcom/haibin/calendarview/MonthViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p2

    iget-object p2, p2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1, p2}, Lcom/haibin/calendarview/BaseMonthView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 623
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1

    :catch_0
    move-exception p1

    .line 614
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 602
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
