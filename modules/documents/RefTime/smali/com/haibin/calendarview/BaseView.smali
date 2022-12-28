.class public abstract Lcom/haibin/calendarview/BaseView;
.super Landroid/view/View;
.source "BaseView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;


# static fields
.field static final TEXT_SIZE:I = 0xe


# instance fields
.field isClick:Z

.field protected mCurDayLunarTextPaint:Landroid/graphics/Paint;

.field protected mCurDayTextPaint:Landroid/graphics/Paint;

.field protected mCurMonthLunarTextPaint:Landroid/graphics/Paint;

.field protected mCurMonthTextPaint:Landroid/graphics/Paint;

.field mCurrentItem:I

.field mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

.field protected mItemHeight:I

.field protected mItemWidth:I

.field mItems:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/haibin/calendarview/Calendar;",
            ">;"
        }
    .end annotation
.end field

.field protected mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

.field protected mOtherMonthTextPaint:Landroid/graphics/Paint;

.field mParentLayout:Lcom/haibin/calendarview/CalendarLayout;

.field protected mSchemeLunarTextPaint:Landroid/graphics/Paint;

.field protected mSchemePaint:Landroid/graphics/Paint;

.field protected mSchemeTextPaint:Landroid/graphics/Paint;

.field protected mSelectTextPaint:Landroid/graphics/Paint;

.field protected mSelectedLunarTextPaint:Landroid/graphics/Paint;

.field protected mSelectedPaint:Landroid/graphics/Paint;

.field protected mTextBaseLine:F

.field mX:F

.field mY:F


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    const/4 v0, 0x0

    .line 145
    invoke-direct {p0, p1, v0}, Lcom/haibin/calendarview/BaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .line 149
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 42
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    .line 47
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    .line 52
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthLunarTextPaint:Landroid/graphics/Paint;

    .line 57
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/haibin/calendarview/BaseView;->mSelectedLunarTextPaint:Landroid/graphics/Paint;

    .line 62
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    .line 67
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/haibin/calendarview/BaseView;->mSchemeLunarTextPaint:Landroid/graphics/Paint;

    .line 72
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/haibin/calendarview/BaseView;->mSchemePaint:Landroid/graphics/Paint;

    .line 77
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/haibin/calendarview/BaseView;->mSelectedPaint:Landroid/graphics/Paint;

    .line 82
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/haibin/calendarview/BaseView;->mSchemeTextPaint:Landroid/graphics/Paint;

    .line 87
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/haibin/calendarview/BaseView;->mSelectTextPaint:Landroid/graphics/Paint;

    .line 92
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/haibin/calendarview/BaseView;->mCurDayTextPaint:Landroid/graphics/Paint;

    .line 97
    new-instance p2, Landroid/graphics/Paint;

    invoke-direct {p2}, Landroid/graphics/Paint;-><init>()V

    iput-object p2, p0, Lcom/haibin/calendarview/BaseView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    const/4 p2, 0x1

    .line 132
    iput-boolean p2, p0, Lcom/haibin/calendarview/BaseView;->isClick:Z

    const/4 p2, -0x1

    .line 142
    iput p2, p0, Lcom/haibin/calendarview/BaseView;->mCurrentItem:I

    .line 150
    invoke-direct {p0, p1}, Lcom/haibin/calendarview/BaseView;->initPaint(Landroid/content/Context;)V

    return-void
.end method

.method private initPaint(Landroid/content/Context;)V
    .locals 6

    .line 159
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 160
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    sget-object v2, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 161
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    const v2, -0xeeeeef

    invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V

    .line 162
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 163
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 165
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 166
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 167
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    const v3, -0x1e1e1f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 168
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 169
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 171
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 172
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthLunarTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 174
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectedLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 175
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectedLunarTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 177
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 178
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 181
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 182
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeLunarTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 184
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 185
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 186
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeTextPaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 187
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeTextPaint:Landroid/graphics/Paint;

    const v3, -0x12acad

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 189
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeTextPaint:Landroid/graphics/Paint;

    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v4

    int-to-float v4, v4

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 191
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 192
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 193
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 194
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setColor(I)V

    .line 195
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 196
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectTextPaint:Landroid/graphics/Paint;

    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v3

    int-to-float v3, v3

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 198
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemePaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 199
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemePaint:Landroid/graphics/Paint;

    sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 200
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemePaint:Landroid/graphics/Paint;

    const/high16 v3, 0x40000000    # 2.0f

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 201
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemePaint:Landroid/graphics/Paint;

    const v4, -0x101011

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 203
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 204
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayTextPaint:Landroid/graphics/Paint;

    sget-object v4, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 205
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayTextPaint:Landroid/graphics/Paint;

    const/high16 v4, -0x10000

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 206
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 207
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayTextPaint:Landroid/graphics/Paint;

    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result v5

    int-to-float v5, v5

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 209
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 210
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    sget-object v5, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 211
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 212
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 213
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    invoke-static {p1, v2}, Lcom/haibin/calendarview/CalendarUtil;->dipToPx(Landroid/content/Context;F)I

    move-result p1

    int-to-float p1, p1

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 215
    iget-object p1, p0, Lcom/haibin/calendarview/BaseView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 216
    iget-object p1, p0, Lcom/haibin/calendarview/BaseView;->mSelectedPaint:Landroid/graphics/Paint;

    sget-object v0, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {p1, v0}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 217
    iget-object p1, p0, Lcom/haibin/calendarview/BaseView;->mSelectedPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 219
    invoke-virtual {p0, p0}, Lcom/haibin/calendarview/BaseView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 220
    invoke-virtual {p0, p0}, Lcom/haibin/calendarview/BaseView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method


# virtual methods
.method final addSchemesFromMap()V
    .locals 4

    .line 290
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_2

    .line 293
    :cond_0
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/Calendar;

    .line 294
    iget-object v2, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    iget-object v2, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v2, v2, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/haibin/calendarview/Calendar;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/haibin/calendarview/Calendar;

    .line 296
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v3}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeText()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_1
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getScheme()Ljava/lang/String;

    move-result-object v3

    :goto_1
    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/Calendar;->setScheme(Ljava/lang/String;)V

    .line 297
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getSchemeColor()I

    move-result v3

    invoke-virtual {v1, v3}, Lcom/haibin/calendarview/Calendar;->setSchemeColor(I)V

    .line 298
    invoke-virtual {v2}, Lcom/haibin/calendarview/Calendar;->getSchemes()Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setSchemes(Ljava/util/List;)V

    goto :goto_0

    :cond_2
    const-string v2, ""

    .line 300
    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setScheme(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 301
    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setSchemeColor(I)V

    const/4 v2, 0x0

    .line 302
    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setSchemes(Ljava/util/List;)V

    goto :goto_0

    :cond_3
    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method protected initPaint()V
    .locals 0

    return-void
.end method

.method protected final isInRange(Lcom/haibin/calendarview/Calendar;)Z
    .locals 1

    .line 388
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-eqz v0, :cond_0

    invoke-static {p1, v0}, Lcom/haibin/calendarview/CalendarUtil;->isCalendarInRange(Lcom/haibin/calendarview/Calendar;Lcom/haibin/calendarview/CalendarViewDelegate;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected isSelected(Lcom/haibin/calendarview/Calendar;)Z
    .locals 1

    .line 353
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mItems:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result p1

    iget v0, p0, Lcom/haibin/calendarview/BaseView;->mCurrentItem:I

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected final onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z
    .locals 1

    .line 377
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mCalendarInterceptListener:Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;

    .line 378
    invoke-interface {v0, p1}, Lcom/haibin/calendarview/CalendarView$OnCalendarInterceptListener;->onCalendarIntercept(Lcom/haibin/calendarview/Calendar;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method protected abstract onDestroy()V
.end method

.method protected onPreviewHook()V
    .locals 0

    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 4
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .line 311
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-le v0, v2, :cond_0

    return v1

    .line 313
    :cond_0
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 321
    :pswitch_0
    iget-boolean v0, p0, Lcom/haibin/calendarview/BaseView;->isClick:Z

    if-eqz v0, :cond_2

    .line 322
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v3, p0, Lcom/haibin/calendarview/BaseView;->mY:F

    sub-float/2addr v0, v3

    .line 323
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v3, 0x42480000    # 50.0f

    cmpg-float v0, v0, v3

    if-gtz v0, :cond_1

    const/4 v1, 0x1

    :cond_1
    iput-boolean v1, p0, Lcom/haibin/calendarview/BaseView;->isClick:Z

    goto :goto_0

    .line 327
    :pswitch_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseView;->mX:F

    .line 328
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseView;->mY:F

    goto :goto_0

    .line 315
    :pswitch_2
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseView;->mX:F

    .line 316
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseView;->mY:F

    .line 317
    iput-boolean v2, p0, Lcom/haibin/calendarview/BaseView;->isClick:Z

    .line 331
    :cond_2
    :goto_0
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result p1

    return p1

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method final removeSchemes()V
    .locals 3

    .line 279
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mItems:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/haibin/calendarview/Calendar;

    const-string v2, ""

    .line 280
    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setScheme(Ljava/lang/String;)V

    const/4 v2, 0x0

    .line 281
    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setSchemeColor(I)V

    const/4 v2, 0x0

    .line 282
    invoke-virtual {v1, v2}, Lcom/haibin/calendarview/Calendar;->setSchemes(Ljava/util/List;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method final setup(Lcom/haibin/calendarview/CalendarViewDelegate;)V
    .locals 0

    .line 229
    iput-object p1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    .line 230
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseView;->updateStyle()V

    .line 231
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseView;->updateItemHeight()V

    .line 233
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseView;->initPaint()V

    return-void
.end method

.method final update()V
    .locals 1

    .line 360
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    iget-object v0, v0, Lcom/haibin/calendarview/CalendarViewDelegate;->mSchemeDatesMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 365
    :cond_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseView;->addSchemesFromMap()V

    .line 366
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseView;->invalidate()V

    return-void

    .line 361
    :cond_1
    :goto_0
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseView;->removeSchemes()V

    .line 362
    invoke-virtual {p0}, Lcom/haibin/calendarview/BaseView;->invalidate()V

    return-void
.end method

.method abstract updateCurrentDate()V
.end method

.method updateItemHeight()V
    .locals 3

    .line 269
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCalendarItemHeight()I

    move-result v0

    iput v0, p0, Lcom/haibin/calendarview/BaseView;->mItemHeight:I

    .line 270
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/graphics/Paint;->getFontMetrics()Landroid/graphics/Paint$FontMetrics;

    move-result-object v0

    .line 271
    iget v1, p0, Lcom/haibin/calendarview/BaseView;->mItemHeight:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->descent:F

    sub-float/2addr v1, v2

    iget v2, v0, Landroid/graphics/Paint$FontMetrics;->bottom:F

    iget v0, v0, Landroid/graphics/Paint$FontMetrics;->top:F

    sub-float/2addr v2, v0

    const/high16 v0, 0x40000000    # 2.0f

    div-float/2addr v2, v0

    add-float/2addr v1, v2

    iput v1, p0, Lcom/haibin/calendarview/BaseView;->mTextBaseLine:F

    return-void
.end method

.method final updateStyle()V
    .locals 2

    .line 238
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    if-nez v0, :cond_0

    return-void

    .line 241
    :cond_0
    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mCurDayTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurDayTextColor()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 242
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurDayLunarTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 243
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentMonthTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 244
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getOtherMonthTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 245
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthLunarTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getCurrentMonthLunarTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 246
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectedLunarTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectedLunarTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 247
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectedTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 248
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getOtherMonthLunarTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 249
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeLunarTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeLunarTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 250
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeThemeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 251
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSchemeTextColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 252
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getDayTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 253
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getDayTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 254
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getDayTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 255
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getDayTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 256
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getDayTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 258
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurMonthLunarTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getLunarTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 259
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectedLunarTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getLunarTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 260
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mCurDayLunarTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getLunarTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 261
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mOtherMonthLunarTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getLunarTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 262
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSchemeLunarTextPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getLunarTextSize()I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 264
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectedPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 265
    iget-object v0, p0, Lcom/haibin/calendarview/BaseView;->mSelectedPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/haibin/calendarview/BaseView;->mDelegate:Lcom/haibin/calendarview/CalendarViewDelegate;

    invoke-virtual {v1}, Lcom/haibin/calendarview/CalendarViewDelegate;->getSelectedThemeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    return-void
.end method
