.class Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;
.super Landroid/support/v4/view/PagerAdapter;
.source "WeekViewPager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/haibin/calendarview/WeekViewPager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "WeekViewPagerAdapter"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/haibin/calendarview/WeekViewPager;


# direct methods
.method private constructor <init>(Lcom/haibin/calendarview/WeekViewPager;)V
    .locals 0

    .line 419
    iput-object p1, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-direct {p0}, Landroid/support/v4/view/PagerAdapter;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/haibin/calendarview/WeekViewPager;Lcom/haibin/calendarview/WeekViewPager$1;)V
    .locals 0

    .line 419
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;-><init>(Lcom/haibin/calendarview/WeekViewPager;)V

    return-void
.end method


# virtual methods
.method public destroyItem(Landroid/view/ViewGroup;ILjava/lang/Object;)V
    .locals 0

    .line 462
    check-cast p3, Lcom/haibin/calendarview/BaseWeekView;

    if-nez p3, :cond_0

    return-void

    .line 466
    :cond_0
    invoke-virtual {p3}, Lcom/haibin/calendarview/BaseWeekView;->onDestroy()V

    .line 467
    invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    return-void
.end method

.method public getCount()I
    .locals 1

    .line 423
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/WeekViewPager;->access$300(Lcom/haibin/calendarview/WeekViewPager;)I

    move-result v0

    return v0
.end method

.method public getItemPosition(Ljava/lang/Object;)I
    .locals 1

    .line 428
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/WeekViewPager;->access$400(Lcom/haibin/calendarview/WeekViewPager;)Z

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
    .locals 6

    .line 438
    iget-object v0, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v0}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v0

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYear()I

    move-result v0

    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    .line 439
    invoke-static {v1}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearMonth()I

    move-result v1

    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    .line 440
    invoke-static {v2}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    invoke-virtual {v2}, Lcom/haibin/calendarview/CalendarViewDelegate;->getMinYearDay()I

    move-result v2

    add-int/lit8 v3, p2, 0x1

    iget-object v4, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    .line 442
    invoke-static {v4}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v4

    invoke-virtual {v4}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekStart()I

    move-result v4

    .line 438
    invoke-static {v0, v1, v2, v3, v4}, Lcom/haibin/calendarview/CalendarUtil;->getFirstCalendarStartWithMinCalendar(IIIII)Lcom/haibin/calendarview/Calendar;

    move-result-object v0

    .line 445
    :try_start_0
    iget-object v1, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v1}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v1

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getWeekViewClass()Ljava/lang/Class;

    move-result-object v1

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Class;

    const-class v4, Landroid/content/Context;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    invoke-virtual {v1, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v1

    .line 446
    new-array v2, v2, [Ljava/lang/Object;

    iget-object v3, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-virtual {v3}, Lcom/haibin/calendarview/WeekViewPager;->getContext()Landroid/content/Context;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/BaseWeekView;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 451
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    iget-object v2, v2, Lcom/haibin/calendarview/WeekViewPager;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    iput-object v2, v1, Lcom/haibin/calendarview/BaseWeekView;->mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

    .line 452
    iget-object v2, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {v2}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/BaseWeekView;->setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V

    .line 453
    invoke-virtual {v1, v0}, Lcom/haibin/calendarview/BaseWeekView;->setup(Lcom/haibin/calendarview/Calendar;)V

    .line 454
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v1, p2}, Lcom/haibin/calendarview/BaseWeekView;->setTag(Ljava/lang/Object;)V

    .line 455
    iget-object p2, p0, Lcom/haibin/calendarview/WeekViewPager$WeekViewPagerAdapter;->this$0:Lcom/haibin/calendarview/WeekViewPager;

    invoke-static {p2}, Lcom/haibin/calendarview/WeekViewPager;->access$200(Lcom/haibin/calendarview/WeekViewPager;)Lcom/haibin/calendarview/CalendarViewDelegate;

    move-result-object p2

    iget-object p2, p2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSelectedCalendar:Lcom/haibin/calendarview/Calendar;

    invoke-virtual {v1, p2}, Lcom/haibin/calendarview/BaseWeekView;->setSelectedCalendar(Lcom/haibin/calendarview/Calendar;)V

    .line 456
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    return-object v1

    :catch_0
    move-exception p1

    .line 448
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method

.method public isViewFromObject(Landroid/view/View;Ljava/lang/Object;)Z
    .locals 0

    .line 433
    invoke-virtual {p1, p2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
