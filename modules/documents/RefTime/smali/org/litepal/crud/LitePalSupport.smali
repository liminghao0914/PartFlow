.class public Lorg/litepal/crud/LitePalSupport;
.super Ljava/lang/Object;
.source "LitePalSupport.java"


# static fields
.field protected static final AES:Ljava/lang/String; = "AES"

.field protected static final MD5:Ljava/lang/String; = "MD5"


# instance fields
.field associatedModelsMapForJoinTable:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private associatedModelsMapWithFK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation
.end field

.field private associatedModelsMapWithoutFK:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field baseObjId:J

.field private fieldsToSetToDefault:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listToClearAssociatedFK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private listToClearSelfFK:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 575
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private clearFKNameList()V
    .locals 1

    .line 830
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getListToClearSelfFK()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 831
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getListToClearAssociatedFK()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method private clearIdOfModelForJoinTable()V
    .locals 3

    .line 820
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getAssociatedModelsMapForJoinTable()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 821
    iget-object v2, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapForJoinTable:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_0

    .line 823
    :cond_0
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapForJoinTable:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private clearIdOfModelWithFK()V
    .locals 3

    .line 803
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getAssociatedModelsMapWithFK()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 804
    iget-object v2, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapWithFK:Ljava/util/Map;

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->clear()V

    goto :goto_0

    .line 806
    :cond_0
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapWithFK:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method private clearIdOfModelWithoutFK()V
    .locals 1

    .line 813
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getAssociatedModelsMapWithoutFK()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method


# virtual methods
.method addAssociatedModelForJoinTable(Ljava/lang/String;J)V
    .locals 1

    .line 665
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getAssociatedModelsMapForJoinTable()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 668
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 669
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 670
    iget-object p2, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapForJoinTable:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 672
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method addAssociatedModelWithFK(Ljava/lang/String;J)V
    .locals 1

    .line 631
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getAssociatedModelsMapWithFK()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_0

    .line 633
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 634
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 635
    iget-object p2, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapWithFK:Ljava/util/Map;

    invoke-interface {p2, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 637
    :cond_0
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    :goto_0
    return-void
.end method

.method addAssociatedModelWithoutFK(Ljava/lang/String;J)V
    .locals 1

    .line 720
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getAssociatedModelsMapWithoutFK()Ljava/util/Map;

    move-result-object v0

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method addAssociatedTableNameToClearFK(Ljava/lang/String;)V
    .locals 2

    .line 770
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getListToClearAssociatedFK()Ljava/util/List;

    move-result-object v0

    .line 771
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 772
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method addEmptyModelForJoinTable(Ljava/lang/String;)V
    .locals 2

    .line 685
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getAssociatedModelsMapForJoinTable()Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 688
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 689
    iget-object v1, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapForJoinTable:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method addFKNameToClearSelf(Ljava/lang/String;)V
    .locals 2

    .line 744
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getListToClearSelfFK()Ljava/util/List;

    move-result-object v0

    .line 745
    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 746
    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public assignBaseObjId(I)V
    .locals 2

    int-to-long v0, p1

    .line 568
    iput-wide v0, p0, Lorg/litepal/crud/LitePalSupport;->baseObjId:J

    return-void
.end method

.method clearAssociatedData()V
    .locals 0

    .line 793
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;->clearIdOfModelWithFK()V

    .line 794
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;->clearIdOfModelWithoutFK()V

    .line 795
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;->clearIdOfModelForJoinTable()V

    .line 796
    invoke-direct {p0}, Lorg/litepal/crud/LitePalSupport;->clearFKNameList()V

    return-void
.end method

.method public clearSavedState()V
    .locals 2

    const-wide/16 v0, 0x0

    .line 547
    iput-wide v0, p0, Lorg/litepal/crud/LitePalSupport;->baseObjId:J

    return-void
.end method

.method public delete()I
    .locals 5

    .line 141
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 142
    :try_start_0
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 143
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 145
    :try_start_1
    new-instance v2, Lorg/litepal/crud/DeleteHandler;

    invoke-direct {v2, v1}, Lorg/litepal/crud/DeleteHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 146
    invoke-virtual {v2, p0}, Lorg/litepal/crud/DeleteHandler;->onDelete(Lorg/litepal/crud/LitePalSupport;)I

    move-result v2

    const-wide/16 v3, 0x0

    .line 147
    iput-wide v3, p0, Lorg/litepal/crud/LitePalSupport;->baseObjId:J

    .line 148
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 151
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v0

    return v2

    :catchall_0
    move-exception v2

    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    :catchall_1
    move-exception v1

    .line 153
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public deleteAsync()Lorg/litepal/crud/async/UpdateOrDeleteExecutor;
    .locals 2

    .line 162
    new-instance v0, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;-><init>()V

    .line 163
    new-instance v1, Lorg/litepal/crud/LitePalSupport$1;

    invoke-direct {v1, p0, v0}, Lorg/litepal/crud/LitePalSupport$1;-><init>(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/async/UpdateOrDeleteExecutor;)V

    .line 179
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method getAssociatedModelsMapForJoinTable()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 702
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapForJoinTable:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 703
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapForJoinTable:Ljava/util/Map;

    .line 705
    :cond_0
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapForJoinTable:Ljava/util/Map;

    return-object v0
.end method

.method getAssociatedModelsMapWithFK()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/Long;",
            ">;>;"
        }
    .end annotation

    .line 650
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapWithFK:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 651
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapWithFK:Ljava/util/Map;

    .line 653
    :cond_0
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapWithFK:Ljava/util/Map;

    return-object v0
.end method

.method getAssociatedModelsMapWithoutFK()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation

    .line 731
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapWithoutFK:Ljava/util/Map;

    if-nez v0, :cond_0

    .line 732
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapWithoutFK:Ljava/util/Map;

    .line 734
    :cond_0
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->associatedModelsMapWithoutFK:Ljava/util/Map;

    return-object v0
.end method

.method protected getBaseObjId()J
    .locals 2

    .line 585
    iget-wide v0, p0, Lorg/litepal/crud/LitePalSupport;->baseObjId:J

    return-wide v0
.end method

.method protected getClassName()Ljava/lang/String;
    .locals 1

    .line 594
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getFieldsToSetToDefault()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 614
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->fieldsToSetToDefault:Ljava/util/List;

    if-nez v0, :cond_0

    .line 615
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/crud/LitePalSupport;->fieldsToSetToDefault:Ljava/util/List;

    .line 617
    :cond_0
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->fieldsToSetToDefault:Ljava/util/List;

    return-object v0
.end method

.method getListToClearAssociatedFK()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 783
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->listToClearAssociatedFK:Ljava/util/List;

    if-nez v0, :cond_0

    .line 784
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/crud/LitePalSupport;->listToClearAssociatedFK:Ljava/util/List;

    .line 786
    :cond_0
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->listToClearAssociatedFK:Ljava/util/List;

    return-object v0
.end method

.method getListToClearSelfFK()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 757
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->listToClearSelfFK:Ljava/util/List;

    if-nez v0, :cond_0

    .line 758
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/litepal/crud/LitePalSupport;->listToClearSelfFK:Ljava/util/List;

    .line 760
    :cond_0
    iget-object v0, p0, Lorg/litepal/crud/LitePalSupport;->listToClearSelfFK:Ljava/util/List;

    return-object v0
.end method

.method protected getTableName()Ljava/lang/String;
    .locals 1

    .line 603
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getClassName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSaved()Z
    .locals 5

    .line 540
    iget-wide v0, p0, Lorg/litepal/crud/LitePalSupport;->baseObjId:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public save()Z
    .locals 1

    .line 349
    :try_start_0
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->saveThrows()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    const/4 v0, 0x1

    return v0

    :catch_0
    move-exception v0

    .line 352
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    const/4 v0, 0x0

    return v0
.end method

.method public saveAsync()Lorg/litepal/crud/async/SaveExecutor;
    .locals 2

    .line 363
    new-instance v0, Lorg/litepal/crud/async/SaveExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/SaveExecutor;-><init>()V

    .line 364
    new-instance v1, Lorg/litepal/crud/LitePalSupport$4;

    invoke-direct {v1, p0, v0}, Lorg/litepal/crud/LitePalSupport$4;-><init>(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/async/SaveExecutor;)V

    .line 380
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/SaveExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public varargs saveIfNotExist([Ljava/lang/String;)Z
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 431
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/litepal/Operator;->isExist(Ljava/lang/Class;[Ljava/lang/String;)Z

    move-result p1

    if-nez p1, :cond_0

    .line 432
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method public varargs saveOrUpdate([Ljava/lang/String;)Z
    .locals 4

    .line 470
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    if-nez p1, :cond_0

    .line 472
    :try_start_0
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 474
    :cond_0
    invoke-static {p1}, Lorg/litepal/Operator;->where([Ljava/lang/String;)Lorg/litepal/FluentQuery;

    move-result-object p1

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {p1, v1}, Lorg/litepal/FluentQuery;->find(Ljava/lang/Class;)Ljava/util/List;

    move-result-object p1

    .line 475
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 476
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->save()Z

    move-result p1

    monitor-exit v0

    return p1

    .line 478
    :cond_1
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 479
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 481
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/litepal/crud/LitePalSupport;

    .line 482
    invoke-virtual {v2}, Lorg/litepal/crud/LitePalSupport;->getBaseObjId()J

    move-result-wide v2

    iput-wide v2, p0, Lorg/litepal/crud/LitePalSupport;->baseObjId:J

    .line 483
    new-instance v2, Lorg/litepal/crud/SaveHandler;

    invoke-direct {v2, v1}, Lorg/litepal/crud/SaveHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 484
    invoke-virtual {v2, p0}, Lorg/litepal/crud/SaveHandler;->onSave(Lorg/litepal/crud/LitePalSupport;)V

    .line 485
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->clearAssociatedData()V

    goto :goto_0

    .line 487
    :cond_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    const/4 p1, 0x1

    .line 493
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return p1

    :catchall_0
    move-exception p1

    goto :goto_1

    :catch_0
    move-exception p1

    .line 490
    :try_start_3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    const/4 p1, 0x0

    .line 493
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    monitor-exit v0

    return p1

    :goto_1
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw p1

    :catchall_1
    move-exception p1

    .line 496
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw p1

    return-void
.end method

.method public varargs saveOrUpdateAsync([Ljava/lang/String;)Lorg/litepal/crud/async/SaveExecutor;
    .locals 2

    .line 513
    new-instance v0, Lorg/litepal/crud/async/SaveExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/SaveExecutor;-><init>()V

    .line 514
    new-instance v1, Lorg/litepal/crud/LitePalSupport$5;

    invoke-direct {v1, p0, p1, v0}, Lorg/litepal/crud/LitePalSupport$5;-><init>(Lorg/litepal/crud/LitePalSupport;[Ljava/lang/String;Lorg/litepal/crud/async/SaveExecutor;)V

    .line 530
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/SaveExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public saveThrows()V
    .locals 5

    .line 409
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 410
    :try_start_0
    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    .line 411
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->beginTransaction()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 413
    :try_start_1
    new-instance v2, Lorg/litepal/crud/SaveHandler;

    invoke-direct {v2, v1}, Lorg/litepal/crud/SaveHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 414
    invoke-virtual {v2, p0}, Lorg/litepal/crud/SaveHandler;->onSave(Lorg/litepal/crud/LitePalSupport;)V

    .line 415
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->clearAssociatedData()V

    .line 416
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->setTransactionSuccessful()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 420
    :try_start_2
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    .line 422
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_0
    move-exception v2

    goto :goto_0

    :catch_0
    move-exception v2

    .line 418
    :try_start_3
    new-instance v3, Lorg/litepal/exceptions/LitePalSupportException;

    invoke-virtual {v2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4, v2}, Lorg/litepal/exceptions/LitePalSupportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 420
    :goto_0
    :try_start_4
    invoke-virtual {v1}, Landroid/database/sqlite/SQLiteDatabase;->endTransaction()V

    throw v2

    :catchall_1
    move-exception v1

    .line 422
    monitor-exit v0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v1
.end method

.method public setToDefault(Ljava/lang/String;)V
    .locals 1

    .line 559
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getFieldsToSetToDefault()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public update(J)I
    .locals 3

    .line 205
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 207
    :try_start_0
    new-instance v1, Lorg/litepal/crud/UpdateHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/litepal/crud/UpdateHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 208
    invoke-virtual {v1, p0, p1, p2}, Lorg/litepal/crud/UpdateHandler;->onUpdate(Lorg/litepal/crud/LitePalSupport;J)I

    move-result p1

    .line 209
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getFieldsToSetToDefault()Ljava/util/List;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 210
    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 212
    new-instance p2, Lorg/litepal/exceptions/LitePalSupportException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p2, v1, p1}, Lorg/litepal/exceptions/LitePalSupportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 214
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public varargs updateAll([Ljava/lang/String;)I
    .locals 3

    .line 276
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    monitor-enter v0

    .line 278
    :try_start_0
    new-instance v1, Lorg/litepal/crud/UpdateHandler;

    invoke-static {}, Lorg/litepal/tablemanager/Connector;->getDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/litepal/crud/UpdateHandler;-><init>(Landroid/database/sqlite/SQLiteDatabase;)V

    .line 279
    invoke-virtual {v1, p0, p1}, Lorg/litepal/crud/UpdateHandler;->onUpdateAll(Lorg/litepal/crud/LitePalSupport;[Ljava/lang/String;)I

    move-result p1

    .line 280
    invoke-virtual {p0}, Lorg/litepal/crud/LitePalSupport;->getFieldsToSetToDefault()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 281
    :try_start_1
    monitor-exit v0

    return p1

    :catchall_0
    move-exception p1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 283
    new-instance v1, Lorg/litepal/exceptions/LitePalSupportException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2, p1}, Lorg/litepal/exceptions/LitePalSupportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 285
    :goto_0
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p1
.end method

.method public varargs updateAllAsync([Ljava/lang/String;)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;
    .locals 2

    .line 302
    new-instance v0, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;-><init>()V

    .line 303
    new-instance v1, Lorg/litepal/crud/LitePalSupport$3;

    invoke-direct {v1, p0, p1, v0}, Lorg/litepal/crud/LitePalSupport$3;-><init>(Lorg/litepal/crud/LitePalSupport;[Ljava/lang/String;Lorg/litepal/crud/async/UpdateOrDeleteExecutor;)V

    .line 319
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method

.method public updateAsync(J)Lorg/litepal/crud/async/UpdateOrDeleteExecutor;
    .locals 2

    .line 225
    new-instance v0, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;

    invoke-direct {v0}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;-><init>()V

    .line 226
    new-instance v1, Lorg/litepal/crud/LitePalSupport$2;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/litepal/crud/LitePalSupport$2;-><init>(Lorg/litepal/crud/LitePalSupport;JLorg/litepal/crud/async/UpdateOrDeleteExecutor;)V

    .line 242
    invoke-virtual {v0, v1}, Lorg/litepal/crud/async/UpdateOrDeleteExecutor;->submit(Ljava/lang/Runnable;)V

    return-object v0
.end method
