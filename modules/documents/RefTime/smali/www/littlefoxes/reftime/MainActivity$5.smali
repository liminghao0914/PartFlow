.class Lwww/littlefoxes/reftime/MainActivity$5;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/MainActivity;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/MainActivity$5;->this$0:Lwww/littlefoxes/reftime/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lwww/littlefoxes/reftime/MainActivity$5;->this$0:Lwww/littlefoxes/reftime/MainActivity;

    const-string v1, "https://littlefoxes.cn/RefTimeSystem/GetApkVersion"

    invoke-static {v1}, Lwww/littlefoxes/reftime/ServerHelper/ServerConnect/ConnectService;->GetConnJson(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lwww/littlefoxes/reftime/ServerHelper/JsonHelper/JsonObjHelper;->GetJsonVersion(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lwww/littlefoxes/reftime/MainActivity;->serverVersion:Ljava/lang/String;

    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    const/4 v1, 0x1

    iput v1, v0, Landroid/os/Message;->what:I

    iget-object v1, p0, Lwww/littlefoxes/reftime/MainActivity$5;->this$0:Lwww/littlefoxes/reftime/MainActivity;

    iget-object v1, v1, Lwww/littlefoxes/reftime/MainActivity;->handler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    return-void
.end method
