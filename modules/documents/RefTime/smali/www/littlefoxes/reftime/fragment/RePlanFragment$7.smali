.class Lwww/littlefoxes/reftime/fragment/RePlanFragment$7;
.super Ljava/lang/Object;

# interfaces
.implements Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$RePlanSelect;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/fragment/RePlanFragment;)V
    .registers 2

    iput-object p1, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$7;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public RePlanDataSelect(LDBManager/Database/RePlanData;)V
    .registers 3

    iget-object v0, p0, Lwww/littlefoxes/reftime/fragment/RePlanFragment$7;->this$0:Lwww/littlefoxes/reftime/fragment/RePlanFragment;

    # invokes: Lwww/littlefoxes/reftime/fragment/RePlanFragment;->SetRePlanData(LDBManager/Database/RePlanData;)V
    invoke-static {v0, p1}, Lwww/littlefoxes/reftime/fragment/RePlanFragment;->access$400(Lwww/littlefoxes/reftime/fragment/RePlanFragment;LDBManager/Database/RePlanData;)V

    return-void
.end method
