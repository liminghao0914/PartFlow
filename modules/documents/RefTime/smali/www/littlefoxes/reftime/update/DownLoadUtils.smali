.class public Lwww/littlefoxes/reftime/update/DownLoadUtils;
.super Ljava/lang/Object;


# instance fields
.field private downloadId:J

.field private downloadManager:Landroid/app/DownloadManager;

.field private mContext:Landroid/content/Context;

.field private mDialog:Landroid/app/Dialog;

.field private name:Ljava/lang/String;

.field private pathstr:Ljava/lang/String;

.field private receiver:Landroid/content/BroadcastReceiver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lwww/littlefoxes/reftime/update/DownLoadUtils$1;

    invoke-direct {v0, p0}, Lwww/littlefoxes/reftime/update/DownLoadUtils$1;-><init>(Lwww/littlefoxes/reftime/update/DownLoadUtils;)V

    iput-object v0, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->receiver:Landroid/content/BroadcastReceiver;

    iput-object p1, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000(Lwww/littlefoxes/reftime/update/DownLoadUtils;)V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    invoke-direct {p0}, Lwww/littlefoxes/reftime/update/DownLoadUtils;->checkStatus()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "access$000Delta"

    const-string v5, "www.littlefoxes.reftime.update.DownLoadUtils"

    const-string v6, "(Lwww/littlefoxes/reftime/update/DownLoadUtils;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method

.method private checkStatus()V
    .registers 8

    .prologue
    const/4 v6, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    nop

    nop

    nop

    new-instance v2, Landroid/app/DownloadManager$Query;

    invoke-direct {v2}, Landroid/app/DownloadManager$Query;-><init>()V

    const/4 v3, 0x1

    new-array v3, v3, [J

    iget-wide v4, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->downloadId:J

    aput-wide v4, v3, v6

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager$Query;->setFilterById([J)Landroid/app/DownloadManager$Query;

    iget-object v3, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->downloadManager:Landroid/app/DownloadManager;

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager;->query(Landroid/app/DownloadManager$Query;)Landroid/database/Cursor;

    move-result-object v2

    invoke-interface {v2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v3

    if-eqz v3, :cond_3b

    const-string v3, "status"

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v3

    invoke-interface {v2, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v3

    const/4 v4, 0x4

    if-eq v3, v4, :cond_3b

    const/16 v4, 0x8

    if-eq v3, v4, :cond_60

    const/16 v4, 0x10

    if-eq v3, v4, :cond_4a

    packed-switch v3, :pswitch_data_6e

    :cond_3b
    :goto_3b
    :pswitch_3b
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "checkStatusDelta"

    const-string v5, "www.littlefoxes.reftime.update.DownLoadUtils"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_4a
    iget-object v3, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->mContext:Landroid/content/Context;

    const-string v4, "\u4e0b\u8f7d\u5931\u8d25"

    invoke-static {v3, v4, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/Toast;->show()V

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_3b

    :cond_60
    invoke-direct {p0}, Lwww/littlefoxes/reftime/update/DownLoadUtils;->installAPK()V

    invoke-interface {v2}, Landroid/database/Cursor;->close()V

    iget-object v2, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v2, v3}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    goto :goto_3b

    :pswitch_data_6e
    .packed-switch 0x1
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method private installAPK()V
    .registers 8

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    iget-object v2, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->pathstr:Ljava/lang/String;

    invoke-direct {p0, v2}, Lwww/littlefoxes/reftime/update/DownLoadUtils;->setPermission(Ljava/lang/String;)V

    new-instance v2, Landroid/content/Intent;

    const-string v3, "android.intent.action.VIEW"

    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const/high16 v3, 0x10000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x18

    if-lt v3, v4, :cond_47

    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->pathstr:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iget-object v4, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->mContext:Landroid/content/Context;

    const-string v5, "com.example.mytime.fileProvider"

    invoke-static {v4, v5, v3}, Landroid/support/v4/content/FileProvider;->getUriForFile(Landroid/content/Context;Ljava/lang/String;Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v2, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    :goto_33
    iget-object v3, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->mContext:Landroid/content/Context;

    invoke-virtual {v3, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "installAPKDelta"

    const-string v5, "www.littlefoxes.reftime.update.DownLoadUtils"

    const-string v6, "()V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :cond_47
    new-instance v3, Ljava/io/File;

    iget-object v4, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->pathstr:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v3}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v3

    const-string v4, "application/vnd.android.package-archive"

    invoke-virtual {v2, v3, v4}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_33
.end method

.method private setPermission(Ljava/lang/String;)V
    .registers 9

    .prologue
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "chmod 777 "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v3

    :try_start_19
    invoke-virtual {v3, v2}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;
    :try_end_1c
    .catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_2b

    :goto_1c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "setPermissionDelta"

    const-string v5, "www.littlefoxes.reftime.update.DownLoadUtils"

    const-string v6, "(Ljava/lang/String;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void

    :catch_2b
    move-exception v2

    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1c
.end method


# virtual methods
.method public downloadAPK(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    .prologue
    const/4 v4, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .local v0, "begin":J
    new-instance v3, Landroid/app/DownloadManager$Request;

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v3, v2}, Landroid/app/DownloadManager$Request;-><init>(Landroid/net/Uri;)V

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Request;->setAllowedOverRoaming(Z)Landroid/app/DownloadManager$Request;

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Request;->setNotificationVisibility(I)Landroid/app/DownloadManager$Request;

    invoke-virtual {v3, p2}, Landroid/app/DownloadManager$Request;->setTitle(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const-string v2, "APP\u66f4\u65b0\u4e2d"

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager$Request;->setDescription(Ljava/lang/CharSequence;)Landroid/app/DownloadManager$Request;

    const/4 v2, 0x1

    invoke-virtual {v3, v2}, Landroid/app/DownloadManager$Request;->setVisibleInDownloadsUi(Z)Landroid/app/DownloadManager$Request;

    new-instance v2, Ljava/io/File;

    iget-object v4, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->mContext:Landroid/content/Context;

    sget-object v5, Landroid/os/Environment;->DIRECTORY_DOWNLOADS:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/content/Context;->getExternalFilesDir(Ljava/lang/String;)Ljava/io/File;

    move-result-object v4

    invoke-direct {v2, v4, p2}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v2}, Landroid/net/Uri;->fromFile(Ljava/io/File;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/app/DownloadManager$Request;->setDestinationUri(Landroid/net/Uri;)Landroid/app/DownloadManager$Request;

    invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->pathstr:Ljava/lang/String;

    iget-object v2, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->downloadManager:Landroid/app/DownloadManager;

    if-nez v2, :cond_4a

    iget-object v2, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->mContext:Landroid/content/Context;

    const-string v4, "download"

    invoke-virtual {v2, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/DownloadManager;

    iput-object v2, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->downloadManager:Landroid/app/DownloadManager;

    :cond_4a
    iget-object v2, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->downloadManager:Landroid/app/DownloadManager;

    if-eqz v2, :cond_54

    invoke-virtual {v2, v3}, Landroid/app/DownloadManager;->enqueue(Landroid/app/DownloadManager$Request;)J

    move-result-wide v2

    iput-wide v2, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->downloadId:J

    :cond_54
    iget-object v2, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lwww/littlefoxes/reftime/update/DownLoadUtils;->receiver:Landroid/content/BroadcastReceiver;

    new-instance v4, Landroid/content/IntentFilter;

    const-string v5, "android.intent.action.DOWNLOAD_COMPLETE"

    invoke-direct {v4, v5}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    const-string v4, "downloadAPKDelta"

    const-string v5, "www.littlefoxes.reftime.update.DownLoadUtils"

    const-string v6, "(Ljava/lang/String;Ljava/lang/String;)V"

    sub-long/2addr v2, v0

    invoke-static {v4, v5, v6, v2, v3}, Lcom/injarctor/ActivityLifecycle;->AllMethodsDelta(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    return-void
.end method
