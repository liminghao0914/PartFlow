.class public Lwww/littlefoxes/reftime/notification/MyNotification;
.super Ljava/lang/Object;


# instance fields
.field emojiAndNameList:LEmojiHelper/EmojiAndName;

.field private mContext:Landroid/content/Context;

.field notification:Landroid/app/Notification;

.field private notificationId:I

.field notificationManager:Landroid/app/NotificationManager;

.field private view:Landroid/widget/RemoteViews;


# direct methods
.method public constructor <init>(Landroid/app/NotificationManager;LDBManager/MainActivityData/RecordList;Landroid/content/Context;)V
    .registers 8

    const/4 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notification:Landroid/app/Notification;

    iput-object v0, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notificationManager:Landroid/app/NotificationManager;

    const/4 v0, 0x1

    iput v0, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notificationId:I

    iput-object p3, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->mContext:Landroid/content/Context;

    iput-object p1, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notificationManager:Landroid/app/NotificationManager;

    new-instance v0, LEmojiHelper/EmojiAndName;

    invoke-virtual {p2}, LDBManager/MainActivityData/RecordList;->getRecordName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, LDBManager/MainActivityData/RecordList;->getRecordUnicode()I

    move-result v2

    invoke-virtual {p2}, LDBManager/MainActivityData/RecordList;->getStartTime()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, LEmojiHelper/EmojiAndName;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    iput-object v0, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->emojiAndNameList:LEmojiHelper/EmojiAndName;

    iget-object v0, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->emojiAndNameList:LEmojiHelper/EmojiAndName;

    invoke-virtual {v0}, LEmojiHelper/EmojiAndName;->getStartTime()Ljava/lang/String;

    move-result-object v0

    invoke-static {}, LDateHelper/DateHelper;->getNowTime()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lwww/littlefoxes/reftime/notification/MyNotification;->getCountingTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->emojiAndNameList:LEmojiHelper/EmojiAndName;

    invoke-direct {p0, v0, v1}, Lwww/littlefoxes/reftime/notification/MyNotification;->createNotification(Ljava/lang/String;LEmojiHelper/EmojiAndName;)V

    return-void
.end method

.method private addZero(I)Ljava/lang/String;
    .registers 10

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const/16 v2, 0xa

    if-ge p1, v2, :cond_28

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    :goto_19
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "addZeroDelta"

    const-string v6, "www.littlefoxes.reftime.notification.MyNotification"

    const-string v7, "(I)Ljava/lang/String;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2

    :cond_28
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto :goto_19
.end method

.method private createNotification(Ljava/lang/String;LEmojiHelper/EmojiAndName;)V
    .registers 10

    const/4 v6, 0x0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RefTime"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notificationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "RefTime"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notificationId:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroid/widget/RemoteViews;

    iget-object v3, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f0c004b

    invoke-direct {v2, v3, v4}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    iput-object v2, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->view:Landroid/widget/RemoteViews;

    invoke-direct {p0, p1, p2}, Lwww/littlefoxes/reftime/notification/MyNotification;->initView(Ljava/lang/String;LEmojiHelper/EmojiAndName;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p2}, LEmojiHelper/EmojiAndName;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LEmojiHelper/EmojiAndName;->getUnicode()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, LEmojiHelper/EmojiAndName;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/notification/MyNotification;->getHash(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notificationId:I

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const v3, 0x7f080086

    const/16 v4, 0x1a

    if-lt v2, v4, :cond_e3

    new-instance v2, Landroid/app/NotificationChannel;

    const/4 v4, 0x1

    invoke-direct {v2, v0, v1, v4}, Landroid/app/NotificationChannel;-><init>(Ljava/lang/String;Ljava/lang/CharSequence;I)V

    iget-object v1, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notificationManager:Landroid/app/NotificationManager;

    invoke-virtual {v1, v2}, Landroid/app/NotificationManager;->createNotificationChannel(Landroid/app/NotificationChannel;)V

    new-instance v1, Landroid/app/Notification$Builder;

    iget-object v2, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->view:Landroid/widget/RemoteViews;

    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setCustomContentView(Landroid/widget/RemoteViews;)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v3}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setAutoCancel(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0, v6}, Landroid/app/Notification$Builder;->setOngoing(Z)Landroid/app/Notification$Builder;

    move-result-object v0

    new-array v1, v4, [J

    const-wide/16 v2, 0x0

    aput-wide v2, v1, v6

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setVibrate([J)Landroid/app/Notification$Builder;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setSound(Landroid/net/Uri;)Landroid/app/Notification$Builder;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/app/Notification$Builder;->setDefaults(I)Landroid/app/Notification$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    iput-object v0, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notification:Landroid/app/Notification;

    :goto_a6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "com.example.mytime.notification.MyTime-"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notificationId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v2, "MyTime"

    invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v0, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->mContext:Landroid/content/Context;

    invoke-static {v0, v6, v1, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    iget-object v1, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->view:Landroid/widget/RemoteViews;

    const v2, 0x7f09011a

    invoke-virtual {v1, v2, v0}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notification:Landroid/app/Notification;

    iget v1, v0, Landroid/app/Notification;->flags:I

    or-int/lit8 v1, v1, 0x2

    iput v1, v0, Landroid/app/Notification;->flags:I

    iget-object v0, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notificationManager:Landroid/app/NotificationManager;

    iget v1, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notificationId:I

    iget-object v2, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v0, v1, v2}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void

    :cond_e3
    new-instance v0, Landroid/app/Notification;

    const-string v1, "MyTime"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-direct {v0, v3, v1, v4, v5}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    iput-object v0, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notification:Landroid/app/Notification;

    iget-object v0, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notification:Landroid/app/Notification;

    iget-object v1, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->view:Landroid/widget/RemoteViews;

    iput-object v1, v0, Landroid/app/Notification;->contentView:Landroid/widget/RemoteViews;

    goto :goto_a6
.end method

.method private getCountingTime(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-static {p1, p2}, LDateHelper/TimeCalculate;->calculateFullTime(Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v4, v2, 0xe10

    invoke-direct {p0, v4}, Lwww/littlefoxes/reftime/notification/MyNotification;->addZero(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit16 v4, v2, 0xe10

    div-int/lit8 v4, v4, 0x3c

    invoke-direct {p0, v4}, Lwww/littlefoxes/reftime/notification/MyNotification;->addZero(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 v2, v2, 0x3c

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/notification/MyNotification;->addZero(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getCountingTimeDelta"

    const-string v6, "www.littlefoxes.reftime.notification.MyNotification"

    const-string v7, "(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-object v2
.end method

.method private getHash(Ljava/lang/String;)I
    .registers 10

    .prologue
    const/16 v3, 0x2b69

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const/4 v4, 0x0

    move v2, v3

    :goto_8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v4, v5, :cond_1b

    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    add-int/lit8 v5, v5, -0x60

    shl-int/lit8 v2, v2, 0x5

    add-int/2addr v2, v5

    rem-int/2addr v2, v3

    add-int/lit8 v4, v4, 0x1

    goto :goto_8

    :cond_1b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getHashDelta"

    const-string v6, "www.littlefoxes.reftime.notification.MyNotification"

    const-string v7, "(Ljava/lang/String;)I"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method

.method private initView(Ljava/lang/String;LEmojiHelper/EmojiAndName;)V
    .registers 6

    iget-object v0, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->view:Landroid/widget/RemoteViews;

    const v1, 0x7f09011b

    invoke-virtual {v0, v1, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->view:Landroid/widget/RemoteViews;

    new-instance v1, Ljava/lang/String;

    invoke-virtual {p2}, LEmojiHelper/EmojiAndName;->getUnicode()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Character;->toChars(I)[C

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/String;-><init>([C)V

    const v2, 0x7f090069

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->view:Landroid/widget/RemoteViews;

    invoke-virtual {p2}, LEmojiHelper/EmojiAndName;->getName()Ljava/lang/String;

    move-result-object v1

    const v2, 0x7f0900b0

    invoke-virtual {v0, v2, v1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->view:Landroid/widget/RemoteViews;

    const v1, 0x7f09011a

    const v2, 0x7f0800a9

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    return-void
.end method


# virtual methods
.method public RefreshNotification(IZI)V
    .registers 11

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    const v2, 0x7f09011b

    if-eqz p2, :cond_61

    mul-int/lit8 v3, p3, 0x3c

    sub-int/2addr v3, p1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v5, v3, 0xe10

    invoke-direct {p0, v5}, Lwww/littlefoxes/reftime/notification/MyNotification;->addZero(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit16 v5, v3, 0xe10

    div-int/lit8 v5, v5, 0x3c

    invoke-direct {p0, v5}, Lwww/littlefoxes/reftime/notification/MyNotification;->addZero(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, ":"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 v3, v3, 0x3c

    invoke-direct {p0, v3}, Lwww/littlefoxes/reftime/notification/MyNotification;->addZero(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->view:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notification:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    iget-object v2, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notificationManager:Landroid/app/NotificationManager;

    iget v3, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notificationId:I

    iget-object v4, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    :goto_52
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "RefreshNotificationDelta"

    const-string v5, "www.littlefoxes.reftime.notification.MyNotification"

    const-string v6, "(IZI)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_61
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    div-int/lit16 v4, p1, 0xe10

    invoke-direct {p0, v4}, Lwww/littlefoxes/reftime/notification/MyNotification;->addZero(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit16 v4, p1, 0xe10

    div-int/lit8 v4, v4, 0x3c

    invoke-direct {p0, v4}, Lwww/littlefoxes/reftime/notification/MyNotification;->addZero(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, ":"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    rem-int/lit8 v4, p1, 0x3c

    invoke-direct {p0, v4}, Lwww/littlefoxes/reftime/notification/MyNotification;->addZero(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->view:Landroid/widget/RemoteViews;

    invoke-virtual {v4, v2, v3}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    iget-object v2, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notification:Landroid/app/Notification;

    iget v3, v2, Landroid/app/Notification;->flags:I

    or-int/lit8 v3, v3, 0x2

    iput v3, v2, Landroid/app/Notification;->flags:I

    iget-object v2, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notificationManager:Landroid/app/NotificationManager;

    iget v3, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notificationId:I

    iget-object v4, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notification:Landroid/app/Notification;

    invoke-virtual {v2, v3, v4}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    goto :goto_52
.end method

.method public cancel()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notificationManager:Landroid/app/NotificationManager;

    iget v3, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notificationId:I

    invoke-virtual {v2, v3}, Landroid/app/NotificationManager;->cancel(I)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "cancelDelta"

    const-string v5, "www.littlefoxes.reftime.notification.MyNotification"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method public getNotificationId()I
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget v2, p0, Lwww/littlefoxes/reftime/notification/MyNotification;->notificationId:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    const-string v3, "getNotificationIdDelta"

    const-string v6, "www.littlefoxes.reftime.notification.MyNotification"

    const-string v7, "()I"

    sub-long/2addr v4, v0

    invoke-static {v3, v6, v7, v4, v5}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return v2
.end method
