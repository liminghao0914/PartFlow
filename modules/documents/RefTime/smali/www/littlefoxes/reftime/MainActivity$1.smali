.class Lwww/littlefoxes/reftime/MainActivity$1;
.super Landroid/os/Handler;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/MainActivity;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/MainActivity$1;->this$0:Lwww/littlefoxes/reftime/MainActivity;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .registers 5

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_24

    :try_start_5
    iget-object v0, p0, Lwww/littlefoxes/reftime/MainActivity$1;->this$0:Lwww/littlefoxes/reftime/MainActivity;

    iget-object v1, p0, Lwww/littlefoxes/reftime/MainActivity$1;->this$0:Lwww/littlefoxes/reftime/MainActivity;

    iget-object v2, p0, Lwww/littlefoxes/reftime/MainActivity$1;->this$0:Lwww/littlefoxes/reftime/MainActivity;

    # invokes: Lwww/littlefoxes/reftime/MainActivity;->getVersionName(Landroid/content/Context;)Ljava/lang/String;
    invoke-static {v1, v2}, Lwww/littlefoxes/reftime/MainActivity;->access$000(Lwww/littlefoxes/reftime/MainActivity;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lwww/littlefoxes/reftime/MainActivity;->currentVersion:Ljava/lang/String;

    iget-object v0, p0, Lwww/littlefoxes/reftime/MainActivity$1;->this$0:Lwww/littlefoxes/reftime/MainActivity;

    iget-object v0, v0, Lwww/littlefoxes/reftime/MainActivity;->currentVersion:Ljava/lang/String;

    iget-object v1, p0, Lwww/littlefoxes/reftime/MainActivity$1;->this$0:Lwww/littlefoxes/reftime/MainActivity;

    iget-object v1, v1, Lwww/littlefoxes/reftime/MainActivity;->serverVersion:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    if-gez v0, :cond_24

    iget-object v0, p0, Lwww/littlefoxes/reftime/MainActivity$1;->this$0:Lwww/littlefoxes/reftime/MainActivity;

    # invokes: Lwww/littlefoxes/reftime/MainActivity;->UpdateApk()V
    invoke-static {v0}, Lwww/littlefoxes/reftime/MainActivity;->access$100(Lwww/littlefoxes/reftime/MainActivity;)V
    :try_end_24
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_24} :catch_25

    :cond_24
    :goto_24
    return-void

    :catch_25
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_24
.end method
