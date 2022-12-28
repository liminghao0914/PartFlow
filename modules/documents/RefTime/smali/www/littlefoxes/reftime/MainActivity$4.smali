.class Lwww/littlefoxes/reftime/MainActivity$4;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/support/design/widget/BottomNavigationView$OnNavigationItemSelectedListener;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/MainActivity;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/MainActivity$4;->this$0:Lwww/littlefoxes/reftime/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNavigationItemSelected(Landroid/view/MenuItem;)Z
    .registers 6

    const/4 v0, 0x0

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x7f0900db

    const/4 v1, 0x1

    if-eq v2, v3, :cond_24

    const v3, 0x7f0900dd

    if-eq v2, v3, :cond_1d

    const v3, 0x7f09012f

    if-eq v2, v3, :cond_16

    :goto_15
    return v0

    :cond_16
    iget-object v0, p0, Lwww/littlefoxes/reftime/MainActivity$4;->this$0:Lwww/littlefoxes/reftime/MainActivity;

    # invokes: Lwww/littlefoxes/reftime/MainActivity;->changeSelection(I)V
    invoke-static {v0, v1}, Lwww/littlefoxes/reftime/MainActivity;->access$200(Lwww/littlefoxes/reftime/MainActivity;I)V

    move v0, v1

    goto :goto_15

    :cond_1d
    iget-object v2, p0, Lwww/littlefoxes/reftime/MainActivity$4;->this$0:Lwww/littlefoxes/reftime/MainActivity;

    # invokes: Lwww/littlefoxes/reftime/MainActivity;->changeSelection(I)V
    invoke-static {v2, v0}, Lwww/littlefoxes/reftime/MainActivity;->access$200(Lwww/littlefoxes/reftime/MainActivity;I)V

    move v0, v1

    goto :goto_15

    :cond_24
    iget-object v0, p0, Lwww/littlefoxes/reftime/MainActivity$4;->this$0:Lwww/littlefoxes/reftime/MainActivity;

    const/4 v2, 0x2

    # invokes: Lwww/littlefoxes/reftime/MainActivity;->changeSelection(I)V
    invoke-static {v0, v2}, Lwww/littlefoxes/reftime/MainActivity;->access$200(Lwww/littlefoxes/reftime/MainActivity;I)V

    move v0, v1

    goto :goto_15
.end method
