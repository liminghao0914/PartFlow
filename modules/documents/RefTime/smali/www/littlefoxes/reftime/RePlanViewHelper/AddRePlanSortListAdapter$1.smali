.class Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$1;
.super Ljava/lang/Object;

# interfaces
.implements Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanRecordListAdapter$itemClickEvent;


# instance fields
.field final synthetic this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;

.field final synthetic val$i:I


# direct methods
.method constructor <init>(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;I)V
    .registers 3

    iput-object p1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;

    iput p2, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$1;->val$i:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public itemClick(LDBManager/Database/RePlanData;)V
    .registers 4

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;

    invoke-static {v0}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->access$000(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;

    invoke-static {v0}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->access$100(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;)Ljava/util/List;

    move-result-object v0

    iget v1, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$1;->val$i:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, LDBManager/RePlanData/ReplanList;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, LDBManager/RePlanData/ReplanList;->setSelect(Z)V

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;

    invoke-virtual {v0}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->notifyDataSetChanged()V

    iget-object v0, p0, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$1;->this$0:Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;

    invoke-static {v0}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;->access$200(Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter;)Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$RePlanSelect;

    move-result-object v0

    invoke-interface {v0, p1}, Lwww/littlefoxes/reftime/RePlanViewHelper/AddRePlanSortListAdapter$RePlanSelect;->RePlanDataSelect(LDBManager/Database/RePlanData;)V

    return-void
.end method
