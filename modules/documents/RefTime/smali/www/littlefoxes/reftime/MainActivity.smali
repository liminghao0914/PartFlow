.class public Lwww/littlefoxes/reftime/MainActivity;
.super Landroid/support/v7/app/AppCompatActivity;


# static fields
.field private static PERMISSIONS_STORAGE:[Ljava/lang/String; = null

.field private static final REQUEST_EXTERNAL_STORAGE:I = 0x1


# instance fields
.field currentVersion:Ljava/lang/String;

.field private fragmentManager:Landroid/support/v4/app/FragmentManager;

.field private fragments:[Landroid/support/v4/app/Fragment;

.field handler:Landroid/os/Handler;

.field private isFirstLoad:Z

.field private mOnNavigationItemSelectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

.field serverVersion:Ljava/lang/String;

.field private transaction:Landroid/support/v4/app/FragmentTransaction;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "android.permission.WRITE_EXTERNAL_STORAGE"

    aput-object v2, v0, v1

    sput-object v0, Lwww/littlefoxes/reftime/MainActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 5

    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lwww/littlefoxes/reftime/MainActivity;->serverVersion:Ljava/lang/String;

    const-string v0, ""

    iput-object v0, p0, Lwww/littlefoxes/reftime/MainActivity;->currentVersion:Ljava/lang/String;

    const/4 v0, 0x3

    new-array v0, v0, [Landroid/support/v4/app/Fragment;

    new-instance v1, Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-direct {v1}, Lwww/littlefoxes/reftime/fragment/RecordFragment;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    invoke-direct {v1}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    invoke-direct {v1}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;-><init>()V

    const/4 v3, 0x2

    aput-object v1, v0, v3

    iput-object v0, p0, Lwww/littlefoxes/reftime/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    iput-boolean v2, p0, Lwww/littlefoxes/reftime/MainActivity;->isFirstLoad:Z

    new-instance v0, Lwww/littlefoxes/reftime/MainActivity$1;

    invoke-direct {v0, p0}, Lwww/littlefoxes/reftime/MainActivity$1;-><init>(Lwww/littlefoxes/reftime/MainActivity;)V

    iput-object v0, p0, Lwww/littlefoxes/reftime/MainActivity;->handler:Landroid/os/Handler;

    new-instance v0, Lwww/littlefoxes/reftime/MainActivity$4;

    invoke-direct {v0, p0}, Lwww/littlefoxes/reftime/MainActivity$4;-><init>(Lwww/littlefoxes/reftime/MainActivity;)V

    iput-object v0, p0, Lwww/littlefoxes/reftime/MainActivity;->mOnNavigationItemSelectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    return-void
.end method

.method private GetHttps()V
    .registers 3

    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lwww/littlefoxes/reftime/MainActivity$5;

    invoke-direct {v1, p0}, Lwww/littlefoxes/reftime/MainActivity$5;-><init>(Lwww/littlefoxes/reftime/MainActivity;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void
.end method

.method private UpdateApk()V
    .registers 4

    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-direct {v0, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const-string v1, "\u66f4\u65b0\u63d0\u793a"

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u6700\u65b0\u7248\u672c\u53f7\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwww/littlefoxes/reftime/MainActivity;->serverVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\n\u7248\u672c\u5927\u5c0f\u4e3a:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lwww/littlefoxes/reftime/MainActivity;->currentVersion:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lwww/littlefoxes/reftime/MainActivity$3;

    invoke-direct {v1, p0}, Lwww/littlefoxes/reftime/MainActivity$3;-><init>(Lwww/littlefoxes/reftime/MainActivity;)V

    const-string v2, "\u6682\u4e0d\u66f4\u65b0"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lwww/littlefoxes/reftime/MainActivity$2;

    invoke-direct {v1, p0}, Lwww/littlefoxes/reftime/MainActivity$2;-><init>(Lwww/littlefoxes/reftime/MainActivity;)V

    const-string v2, "\u7acb\u5373\u66f4\u65b0"

    invoke-virtual {v0, v2, v1}, Landroid/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog;->setCancelable(Z)V

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method static synthetic access$000(Lwww/littlefoxes/reftime/MainActivity;Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    invoke-direct {p0, p1}, Lwww/littlefoxes/reftime/MainActivity;->getVersionName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lwww/littlefoxes/reftime/MainActivity;)V
    .registers 1

    invoke-direct {p0}, Lwww/littlefoxes/reftime/MainActivity;->UpdateApk()V

    return-void
.end method

.method static synthetic access$200(Lwww/littlefoxes/reftime/MainActivity;I)V
    .registers 2

    invoke-direct {p0, p1}, Lwww/littlefoxes/reftime/MainActivity;->changeSelection(I)V

    return-void
.end method

.method private changeSelection(I)V
    .registers 8

    const/4 v5, 0x0

    iget-object v0, p0, Lwww/littlefoxes/reftime/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lwww/littlefoxes/reftime/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const v0, 0x7f090045

    packed-switch p1, :pswitch_data_82

    :cond_f
    :goto_f
    iget-object v0, p0, Lwww/littlefoxes/reftime/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-direct {p0, v0}, Lwww/littlefoxes/reftime/MainActivity;->newHideFragments(Landroid/support/v4/app/FragmentTransaction;)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v1, p0, Lwww/littlefoxes/reftime/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-object v0, p0, Lwww/littlefoxes/reftime/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void

    :pswitch_23
    iget-object v1, p0, Lwww/littlefoxes/reftime/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    const/4 v2, 0x2

    aget-object v3, v1, v2

    if-nez v3, :cond_f

    new-instance v3, Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    invoke-direct {v3}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lwww/littlefoxes/reftime/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v3, p0, Lwww/littlefoxes/reftime/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    aget-object v2, v3, v2

    const-string v3, "2"

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_f

    :pswitch_3d
    iget-object v1, p0, Lwww/littlefoxes/reftime/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    const/4 v2, 0x1

    aget-object v3, v1, v2

    if-nez v3, :cond_56

    new-instance v3, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    invoke-direct {v3}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;-><init>()V

    aput-object v3, v1, v2

    iget-object v1, p0, Lwww/littlefoxes/reftime/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v3, p0, Lwww/littlefoxes/reftime/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    aget-object v3, v3, v2

    const-string v4, "1"

    invoke-virtual {v1, v0, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    :cond_56
    iget-boolean v0, p0, Lwww/littlefoxes/reftime/MainActivity;->isFirstLoad:Z

    if-eqz v0, :cond_63

    :try_start_5a
    iget-object v0, p0, Lwww/littlefoxes/reftime/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    aget-object v0, v0, v2

    check-cast v0, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;

    invoke-virtual {v0}, Lwww/littlefoxes/reftime/fragment/StatisticsFragment;->FrashData()V
    :try_end_63
    .catch Ljava/lang/Exception; {:try_start_5a .. :try_end_63} :catch_7f

    :cond_63
    :goto_63
    iput-boolean v5, p0, Lwww/littlefoxes/reftime/MainActivity;->isFirstLoad:Z

    goto :goto_f

    :pswitch_66
    iget-object v1, p0, Lwww/littlefoxes/reftime/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    aget-object v2, v1, v5

    if-nez v2, :cond_f

    new-instance v2, Lwww/littlefoxes/reftime/fragment/RecordFragment;

    invoke-direct {v2}, Lwww/littlefoxes/reftime/fragment/RecordFragment;-><init>()V

    aput-object v2, v1, v5

    iget-object v1, p0, Lwww/littlefoxes/reftime/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v2, p0, Lwww/littlefoxes/reftime/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    aget-object v2, v2, v5

    const-string v3, "0"

    invoke-virtual {v1, v0, v2, v3}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    goto :goto_f

    :catch_7f
    move-exception v0

    goto :goto_63

    nop

    :pswitch_data_82
    .packed-switch 0x0
        :pswitch_66
        :pswitch_3d
        :pswitch_23
    .end packed-switch
.end method

.method private getVersionName(Landroid/content/Context;)Ljava/lang/String;
    .registers 5

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    return-object v0
.end method

.method private initView(Landroid/os/Bundle;)V
    .registers 9

    const/4 v1, 0x0

    const v0, 0x7f0900b8

    invoke-virtual {p0, v0}, Lwww/littlefoxes/reftime/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/BottomNavigationView;

    iget-object v2, p0, Lwww/littlefoxes/reftime/MainActivity;->mOnNavigationItemSelectedListener:Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;

    invoke-virtual {v0, v2}, Landroid/support/design/widget/BottomNavigationView;->setOnNavigationItemSelectedListener(Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;)V

    invoke-virtual {p0}, Lwww/littlefoxes/reftime/MainActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v0

    iput-object v0, p0, Lwww/littlefoxes/reftime/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    iget-object v0, p0, Lwww/littlefoxes/reftime/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v0

    iput-object v0, p0, Lwww/littlefoxes/reftime/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    if-eqz p1, :cond_41

    move v0, v1

    :goto_20
    iget-object v2, p0, Lwww/littlefoxes/reftime/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    array-length v3, v2

    if-ge v0, v3, :cond_6e

    iget-object v3, p0, Lwww/littlefoxes/reftime/MainActivity;->fragmentManager:Landroid/support/v4/app/FragmentManager;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/support/v4/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/support/v4/app/Fragment;

    move-result-object v3

    aput-object v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_20

    :cond_41
    move v0, v1

    :goto_42
    iget-object v2, p0, Lwww/littlefoxes/reftime/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    array-length v3, v2

    if-ge v0, v3, :cond_6e

    iget-object v3, p0, Lwww/littlefoxes/reftime/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    const v4, 0x7f090045

    aget-object v2, v2, v0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/FragmentTransaction;

    iget-object v2, p0, Lwww/littlefoxes/reftime/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v3, p0, Lwww/littlefoxes/reftime/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    add-int/lit8 v0, v0, 0x1

    goto :goto_42

    :cond_6e
    iget-object v0, p0, Lwww/littlefoxes/reftime/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    iget-object v2, p0, Lwww/littlefoxes/reftime/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    aget-object v1, v2, v1

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentTransaction;->show(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    iget-object v0, p0, Lwww/littlefoxes/reftime/MainActivity;->transaction:Landroid/support/v4/app/FragmentTransaction;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentTransaction;->commit()I

    return-void
.end method

.method private newHideFragments(Landroid/support/v4/app/FragmentTransaction;)V
    .registers 5

    const/4 v2, 0x0

    iget-object v0, p0, Lwww/littlefoxes/reftime/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    aget-object v1, v0, v2

    if-eqz v1, :cond_c

    aget-object v0, v0, v2

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_c
    iget-object v0, p0, Lwww/littlefoxes/reftime/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    const/4 v1, 0x1

    aget-object v2, v0, v1

    if-eqz v2, :cond_18

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_18
    iget-object v0, p0, Lwww/littlefoxes/reftime/MainActivity;->fragments:[Landroid/support/v4/app/Fragment;

    const/4 v1, 0x2

    aget-object v2, v0, v1

    if-eqz v2, :cond_24

    aget-object v0, v0, v1

    invoke-virtual {p1, v0}, Landroid/support/v4/app/FragmentTransaction;->hide(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    :cond_24
    return-void
.end method

.method public static verifyStoragePermissions(Landroid/app/Activity;)V
    .registers 3

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    :try_start_2
    invoke-static {p0, v0}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_e

    sget-object v0, Lwww/littlefoxes/reftime/MainActivity;->PERMISSIONS_STORAGE:[Ljava/lang/String;

    const/4 v1, 0x1

    invoke-static {p0, v0, v1}, Landroid/support/v4/app/ActivityCompat;->requestPermissions(Landroid/app/Activity;[Ljava/lang/String;I)V
    :try_end_e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_e} :catch_f

    :cond_e
    :goto_e
    return-void

    :catch_f
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_e
.end method


# virtual methods
.method protected onCreate(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const v0, 0x7f0c0021

    invoke-virtual {p0, v0}, Lwww/littlefoxes/reftime/MainActivity;->setContentView(I)V

    const/4 v0, 0x1

    const v1, 0x7f060096

    invoke-static {p0, v0, v1}, LOSHelper/StatusBarUtil;->setStatusBarMode(Landroid/app/Activity;ZI)V

    invoke-direct {p0, p1}, Lwww/littlefoxes/reftime/MainActivity;->initView(Landroid/os/Bundle;)V

    return-void
.end method

.method protected onPostResume()V
    .registers 1

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onPostResume()V

    return-void
.end method

.method protected onRestart()V
    .registers 1

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onRestart()V

    return-void
.end method

.method protected onResume()V
    .registers 1

    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onResume()V

    return-void
.end method

.method protected onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 2

    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onSaveInstanceState(Landroid/os/Bundle;)V

    return-void
.end method
