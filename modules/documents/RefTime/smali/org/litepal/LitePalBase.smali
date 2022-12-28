.class public abstract Lorg/litepal/LitePalBase;
.super Ljava/lang/Object;
.source "LitePalBase.java"


# static fields
.field private static final GET_ASSOCIATIONS_ACTION:I = 0x1

.field private static final GET_ASSOCIATION_INFO_ACTION:I = 0x2

.field public static final TAG:Ljava/lang/String; = "LitePalBase"


# instance fields
.field private classFieldsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private classGenericFieldsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAssociationInfos:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mAssociationModels:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/litepal/tablemanager/model/AssociationsModel;",
            ">;"
        }
    .end annotation
.end field

.field private mGenericModels:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Lorg/litepal/tablemanager/model/GenericModel;",
            ">;"
        }
    .end annotation
.end field

.field private typeChangeRules:[Lorg/litepal/tablemanager/typechange/OrmChange;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x6

    .line 76
    new-array v0, v0, [Lorg/litepal/tablemanager/typechange/OrmChange;

    new-instance v1, Lorg/litepal/tablemanager/typechange/NumericOrm;

    invoke-direct {v1}, Lorg/litepal/tablemanager/typechange/NumericOrm;-><init>()V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/litepal/tablemanager/typechange/TextOrm;

    invoke-direct {v1}, Lorg/litepal/tablemanager/typechange/TextOrm;-><init>()V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lorg/litepal/tablemanager/typechange/BooleanOrm;

    invoke-direct {v1}, Lorg/litepal/tablemanager/typechange/BooleanOrm;-><init>()V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lorg/litepal/tablemanager/typechange/DecimalOrm;

    invoke-direct {v1}, Lorg/litepal/tablemanager/typechange/DecimalOrm;-><init>()V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lorg/litepal/tablemanager/typechange/DateOrm;

    invoke-direct {v1}, Lorg/litepal/tablemanager/typechange/DateOrm;-><init>()V

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lorg/litepal/tablemanager/typechange/BlobOrm;

    invoke-direct {v1}, Lorg/litepal/tablemanager/typechange/BlobOrm;-><init>()V

    const/4 v2, 0x5

    aput-object v1, v0, v2

    iput-object v0, p0, Lorg/litepal/LitePalBase;->typeChangeRules:[Lorg/litepal/tablemanager/typechange/OrmChange;

    .line 82
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/litepal/LitePalBase;->classFieldsMap:Ljava/util/Map;

    .line 87
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lorg/litepal/LitePalBase;->classGenericFieldsMap:Ljava/util/Map;

    return-void
.end method

.method private addIntoAssociationInfoCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V
    .locals 1

    .line 658
    new-instance v0, Lorg/litepal/crud/model/AssociationsInfo;

    invoke-direct {v0}, Lorg/litepal/crud/model/AssociationsInfo;-><init>()V

    .line 659
    invoke-virtual {v0, p1}, Lorg/litepal/crud/model/AssociationsInfo;->setSelfClassName(Ljava/lang/String;)V

    .line 660
    invoke-virtual {v0, p2}, Lorg/litepal/crud/model/AssociationsInfo;->setAssociatedClassName(Ljava/lang/String;)V

    .line 661
    invoke-virtual {v0, p3}, Lorg/litepal/crud/model/AssociationsInfo;->setClassHoldsForeignKey(Ljava/lang/String;)V

    .line 662
    invoke-virtual {v0, p4}, Lorg/litepal/crud/model/AssociationsInfo;->setAssociateOtherModelFromSelf(Ljava/lang/reflect/Field;)V

    .line 663
    invoke-virtual {v0, p5}, Lorg/litepal/crud/model/AssociationsInfo;->setAssociateSelfFromOtherModel(Ljava/lang/reflect/Field;)V

    .line 664
    invoke-virtual {v0, p6}, Lorg/litepal/crud/model/AssociationsInfo;->setAssociationType(I)V

    .line 665
    iget-object p1, p0, Lorg/litepal/LitePalBase;->mAssociationInfos:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private addIntoAssociationModelCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 1

    .line 628
    new-instance v0, Lorg/litepal/tablemanager/model/AssociationsModel;

    invoke-direct {v0}, Lorg/litepal/tablemanager/model/AssociationsModel;-><init>()V

    .line 629
    invoke-static {p1}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/litepal/tablemanager/model/AssociationsModel;->setTableName(Ljava/lang/String;)V

    .line 630
    invoke-static {p2}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/litepal/tablemanager/model/AssociationsModel;->setAssociatedTableName(Ljava/lang/String;)V

    .line 631
    invoke-static {p3}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lorg/litepal/tablemanager/model/AssociationsModel;->setTableHoldsForeignKey(Ljava/lang/String;)V

    .line 632
    invoke-virtual {v0, p4}, Lorg/litepal/tablemanager/model/AssociationsModel;->setAssociationType(I)V

    .line 633
    iget-object p1, p0, Lorg/litepal/LitePalBase;->mAssociationModels:Ljava/util/Collection;

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private analyzeClassFields(Ljava/lang/String;I)V
    .locals 5

    .line 381
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 382
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    .line 383
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    .line 384
    invoke-direct {p0, v3}, Lorg/litepal/LitePalBase;->isNonPrimitive(Ljava/lang/reflect/Field;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 385
    const-class v4, Lorg/litepal/annotation/Column;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lorg/litepal/annotation/Column;

    if-eqz v4, :cond_0

    .line 386
    invoke-interface {v4}, Lorg/litepal/annotation/Column;->ignore()Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_1

    .line 389
    :cond_0
    invoke-direct {p0, p1, v3, p2}, Lorg/litepal/LitePalBase;->oneToAnyConditions(Ljava/lang/String;Ljava/lang/reflect/Field;I)V

    .line 390
    invoke-direct {p0, p1, v3, p2}, Lorg/litepal/LitePalBase;->manyToAnyConditions(Ljava/lang/String;Ljava/lang/reflect/Field;I)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return-void

    :catch_0
    move-exception p2

    .line 394
    invoke-virtual {p2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 395
    new-instance p2, Lorg/litepal/exceptions/DatabaseGenerateException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "can not find a class named "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw p2

    return-void
.end method

.method private convertFieldToColumnModel(Ljava/lang/reflect/Field;)Lorg/litepal/tablemanager/model/ColumnModel;
    .locals 5

    .line 692
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 693
    invoke-virtual {p0, v0}, Lorg/litepal/LitePalBase;->getColumnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    .line 697
    const-class v2, Lorg/litepal/annotation/Column;

    invoke-virtual {p1, v2}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v2

    check-cast v2, Lorg/litepal/annotation/Column;

    if-eqz v2, :cond_0

    .line 699
    invoke-interface {v2}, Lorg/litepal/annotation/Column;->nullable()Z

    move-result v1

    .line 700
    invoke-interface {v2}, Lorg/litepal/annotation/Column;->unique()Z

    move-result v3

    .line 701
    invoke-interface {v2}, Lorg/litepal/annotation/Column;->defaultValue()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    const/4 v3, 0x0

    move-object v2, v1

    const/4 v1, 0x1

    .line 703
    :goto_0
    new-instance v4, Lorg/litepal/tablemanager/model/ColumnModel;

    invoke-direct {v4}, Lorg/litepal/tablemanager/model/ColumnModel;-><init>()V

    .line 704
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/DBUtility;->convertToValidColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v4, p1}, Lorg/litepal/tablemanager/model/ColumnModel;->setColumnName(Ljava/lang/String;)V

    .line 705
    invoke-virtual {v4, v0}, Lorg/litepal/tablemanager/model/ColumnModel;->setColumnType(Ljava/lang/String;)V

    .line 706
    invoke-virtual {v4, v1}, Lorg/litepal/tablemanager/model/ColumnModel;->setNullable(Z)V

    .line 707
    invoke-virtual {v4, v3}, Lorg/litepal/tablemanager/model/ColumnModel;->setUnique(Z)V

    .line 708
    invoke-virtual {v4, v2}, Lorg/litepal/tablemanager/model/ColumnModel;->setDefaultValue(Ljava/lang/String;)V

    return-object v4
.end method

.method private isNonPrimitive(Ljava/lang/reflect/Field;)Z
    .locals 0

    .line 407
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result p1

    xor-int/lit8 p1, p1, 0x1

    return p1
.end method

.method private isPrivate(Ljava/lang/reflect/Field;)Z
    .locals 0

    .line 418
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result p1

    invoke-static {p1}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result p1

    return p1
.end method

.method private manyToAnyConditions(Ljava/lang/String;Ljava/lang/reflect/Field;I)V
    .locals 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    .line 534
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/litepal/LitePalBase;->isCollection(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 535
    invoke-virtual {p0, p2}, Lorg/litepal/LitePalBase;->getGenericTypeName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v0

    .line 538
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object v1

    invoke-virtual {v1}, Lorg/litepal/parser/LitePalAttr;->getClassNames()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    const/4 v8, 0x1

    if-eqz v1, :cond_9

    .line 539
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 540
    invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v9

    .line 544
    array-length v10, v9

    const/4 v1, 0x0

    const/4 v11, 0x0

    :goto_0
    const/4 v2, 0x2

    if-ge v11, v10, :cond_7

    aget-object v6, v9, v11

    .line 546
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v3

    invoke-static {v3}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v3

    if-nez v3, :cond_6

    .line 547
    invoke-virtual {v6}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v3

    .line 551
    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    if-ne p3, v8, :cond_0

    .line 553
    invoke-direct {p0, p1, v0, v0, v2}, Lorg/litepal/LitePalBase;->addIntoAssociationModelCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    if-ne p3, v2, :cond_1

    const/4 v7, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, v0

    move-object v5, p2

    .line 556
    invoke-direct/range {v1 .. v7}, Lorg/litepal/LitePalBase;->addIntoAssociationInfoCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V

    :cond_1
    :goto_1
    const/4 v1, 0x1

    goto :goto_3

    .line 564
    :cond_2
    invoke-virtual {p0, v3}, Lorg/litepal/LitePalBase;->isCollection(Ljava/lang/Class;)Z

    move-result v3

    if-eqz v3, :cond_6

    .line 565
    invoke-virtual {p0, v6}, Lorg/litepal/LitePalBase;->getGenericTypeName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    .line 566
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_6

    if-ne p3, v8, :cond_4

    .line 568
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 570
    new-instance v1, Lorg/litepal/tablemanager/model/GenericModel;

    invoke-direct {v1}, Lorg/litepal/tablemanager/model/GenericModel;-><init>()V

    .line 571
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {p1, v2}, Lorg/litepal/util/DBUtility;->getGenericTableName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/litepal/tablemanager/model/GenericModel;->setTableName(Ljava/lang/String;)V

    .line 572
    invoke-static {p2}, Lorg/litepal/util/DBUtility;->getM2MSelfRefColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/litepal/tablemanager/model/GenericModel;->setValueColumnName(Ljava/lang/String;)V

    const-string v2, "integer"

    .line 573
    invoke-virtual {v1, v2}, Lorg/litepal/tablemanager/model/GenericModel;->setValueColumnType(Ljava/lang/String;)V

    .line 574
    invoke-static {p1}, Lorg/litepal/util/DBUtility;->getGenericValueIdColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/litepal/tablemanager/model/GenericModel;->setValueIdColumnName(Ljava/lang/String;)V

    .line 575
    iget-object v2, p0, Lorg/litepal/LitePalBase;->mGenericModels:Ljava/util/Collection;

    invoke-interface {v2, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_3
    const/4 v1, 0x0

    const/4 v2, 0x3

    .line 577
    invoke-direct {p0, p1, v0, v1, v2}, Lorg/litepal/LitePalBase;->addIntoAssociationModelCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_4
    if-ne p3, v2, :cond_5

    .line 581
    invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_5

    const/4 v4, 0x0

    const/4 v7, 0x3

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v5, p2

    .line 582
    invoke-direct/range {v1 .. v7}, Lorg/litepal/LitePalBase;->addIntoAssociationInfoCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V

    :cond_5
    :goto_2
    const/4 v1, 0x1

    :cond_6
    :goto_3
    add-int/lit8 v11, v11, 0x1

    goto/16 :goto_0

    :cond_7
    if-nez v1, :cond_a

    if-ne p3, v8, :cond_8

    .line 595
    invoke-direct {p0, p1, v0, v0, v2}, Lorg/litepal/LitePalBase;->addIntoAssociationModelCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    :cond_8
    if-ne p3, v2, :cond_a

    const/4 v6, 0x0

    const/4 v7, 0x2

    move-object v1, p0

    move-object v2, p1

    move-object v3, v0

    move-object v4, v0

    move-object v5, p2

    .line 598
    invoke-direct/range {v1 .. v7}, Lorg/litepal/LitePalBase;->addIntoAssociationInfoCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V

    goto :goto_4

    .line 602
    :cond_9
    invoke-static {v0}, Lorg/litepal/util/BaseUtility;->isGenericTypeSupported(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_a

    if-ne p3, v8, :cond_a

    .line 603
    new-instance p3, Lorg/litepal/tablemanager/model/GenericModel;

    invoke-direct {p3}, Lorg/litepal/tablemanager/model/GenericModel;-><init>()V

    .line 604
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lorg/litepal/util/DBUtility;->getGenericTableName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p3, v1}, Lorg/litepal/tablemanager/model/GenericModel;->setTableName(Ljava/lang/String;)V

    .line 605
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lorg/litepal/util/DBUtility;->convertToValidColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/litepal/tablemanager/model/GenericModel;->setValueColumnName(Ljava/lang/String;)V

    .line 606
    invoke-virtual {p0, v0}, Lorg/litepal/LitePalBase;->getColumnType(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p3, p2}, Lorg/litepal/tablemanager/model/GenericModel;->setValueColumnType(Ljava/lang/String;)V

    .line 607
    invoke-static {p1}, Lorg/litepal/util/DBUtility;->getGenericValueIdColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p3, p1}, Lorg/litepal/tablemanager/model/GenericModel;->setValueIdColumnName(Ljava/lang/String;)V

    .line 608
    iget-object p1, p0, Lorg/litepal/LitePalBase;->mGenericModels:Ljava/util/Collection;

    invoke-interface {p1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_a
    :goto_4
    return-void
.end method

.method private oneToAnyConditions(Ljava/lang/String;Ljava/lang/reflect/Field;I)V
    .locals 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;
        }
    .end annotation

    move-object v7, p0

    move-object/from16 v8, p1

    move/from16 v9, p3

    .line 448
    invoke-virtual/range {p2 .. p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v10

    .line 451
    invoke-static {}, Lorg/litepal/parser/LitePalAttr;->getInstance()Lorg/litepal/parser/LitePalAttr;

    move-result-object v0

    invoke-virtual {v0}, Lorg/litepal/parser/LitePalAttr;->getClassNames()Ljava/util/List;

    move-result-object v0

    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 452
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 453
    invoke-virtual {v0}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v11

    .line 459
    array-length v12, v11

    const/4 v0, 0x0

    const/4 v13, 0x0

    :goto_0
    const/4 v1, 0x2

    const/4 v14, 0x1

    if-ge v13, v12, :cond_6

    aget-object v5, v11, v13

    .line 460
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v2

    invoke-static {v2}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v2

    if-nez v2, :cond_5

    .line 461
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    .line 465
    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v8, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    if-ne v9, v14, :cond_0

    .line 467
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 467
    invoke-direct {p0, v8, v0, v1, v14}, Lorg/litepal/LitePalBase;->addIntoAssociationModelCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_1

    :cond_0
    if-ne v9, v1, :cond_1

    .line 470
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 471
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v6, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    .line 470
    invoke-direct/range {v0 .. v6}, Lorg/litepal/LitePalBase;->addIntoAssociationInfoCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V

    :cond_1
    :goto_1
    const/4 v0, 0x1

    goto :goto_3

    .line 478
    :cond_2
    invoke-virtual {p0, v2}, Lorg/litepal/LitePalBase;->isCollection(Ljava/lang/Class;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 479
    invoke-virtual {p0, v5}, Lorg/litepal/LitePalBase;->getGenericTypeName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    .line 480
    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    if-ne v9, v14, :cond_3

    .line 482
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v8, v0, v8, v1}, Lorg/litepal/LitePalBase;->addIntoAssociationModelCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_2

    :cond_3
    if-ne v9, v1, :cond_4

    .line 485
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    const/4 v6, 0x2

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v3, p1

    move-object/from16 v4, p2

    invoke-direct/range {v0 .. v6}, Lorg/litepal/LitePalBase;->addIntoAssociationInfoCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V

    :cond_4
    :goto_2
    const/4 v0, 0x1

    :cond_5
    :goto_3
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    :cond_6
    if-nez v0, :cond_8

    if-ne v9, v14, :cond_7

    .line 497
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    .line 498
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 497
    invoke-direct {p0, v8, v0, v1, v14}, Lorg/litepal/LitePalBase;->addIntoAssociationModelCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    goto :goto_4

    :cond_7
    if-ne v9, v1, :cond_8

    .line 500
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 501
    invoke-virtual {v10}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v0, p0

    move-object/from16 v1, p1

    move-object/from16 v4, p2

    .line 500
    invoke-direct/range {v0 .. v6}, Lorg/litepal/LitePalBase;->addIntoAssociationInfoCollection(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/reflect/Field;Ljava/lang/reflect/Field;I)V

    :cond_8
    :goto_4
    return-void
.end method

.method private recursiveSupportedFields(Ljava/lang/Class;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 323
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    if-eq p1, v0, :cond_4

    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 326
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 327
    array-length v1, v0

    if-lez v1, :cond_3

    .line 328
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_3

    aget-object v3, v0, v2

    .line 329
    const-class v4, Lorg/litepal/annotation/Column;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lorg/litepal/annotation/Column;

    if-eqz v4, :cond_1

    .line 330
    invoke-interface {v4}, Lorg/litepal/annotation/Column;->ignore()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 333
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 334
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_2

    .line 335
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    .line 336
    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    .line 337
    invoke-static {v4}, Lorg/litepal/util/BaseUtility;->isFieldTypeSupported(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 338
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 343
    :cond_3
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/litepal/LitePalBase;->recursiveSupportedFields(Ljava/lang/Class;Ljava/util/List;)V

    return-void

    :cond_4
    :goto_2
    return-void
.end method

.method private recursiveSupportedGenericFields(Ljava/lang/Class;Ljava/util/List;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;)V"
        }
    .end annotation

    .line 347
    const-class v0, Lorg/litepal/crud/LitePalSupport;

    if-eq p1, v0, :cond_5

    const-class v0, Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    goto :goto_2

    .line 350
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 351
    array-length v1, v0

    if-lez v1, :cond_4

    .line 352
    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_4

    aget-object v3, v0, v2

    .line 353
    const-class v4, Lorg/litepal/annotation/Column;

    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v4

    check-cast v4, Lorg/litepal/annotation/Column;

    if-eqz v4, :cond_1

    .line 354
    invoke-interface {v4}, Lorg/litepal/annotation/Column;->ignore()Z

    move-result v4

    if-eqz v4, :cond_1

    goto :goto_1

    .line 357
    :cond_1
    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getModifiers()I

    move-result v4

    .line 358
    invoke-static {v4}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result v4

    if-nez v4, :cond_3

    invoke-virtual {v3}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {p0, v4}, Lorg/litepal/LitePalBase;->isCollection(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 359
    invoke-virtual {p0, v3}, Lorg/litepal/LitePalBase;->getGenericTypeName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v4

    .line 360
    invoke-static {v4}, Lorg/litepal/util/BaseUtility;->isGenericTypeSupported(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_2

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 361
    :cond_2
    invoke-interface {p2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 366
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1, p2}, Lorg/litepal/LitePalBase;->recursiveSupportedGenericFields(Ljava/lang/Class;Ljava/util/List;)V

    return-void

    :cond_5
    :goto_2
    return-void
.end method


# virtual methods
.method protected getAssociationInfo(Ljava/lang/String;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;"
        }
    .end annotation

    .line 170
    iget-object v0, p0, Lorg/litepal/LitePalBase;->mAssociationInfos:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 171
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/litepal/LitePalBase;->mAssociationInfos:Ljava/util/Collection;

    .line 173
    :cond_0
    iget-object v0, p0, Lorg/litepal/LitePalBase;->mAssociationInfos:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    const/4 v0, 0x2

    .line 174
    invoke-direct {p0, p1, v0}, Lorg/litepal/LitePalBase;->analyzeClassFields(Ljava/lang/String;I)V

    .line 175
    iget-object p1, p0, Lorg/litepal/LitePalBase;->mAssociationInfos:Ljava/util/Collection;

    return-object p1
.end method

.method protected getAssociations(Ljava/util/List;)Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/Collection<",
            "Lorg/litepal/tablemanager/model/AssociationsModel;",
            ">;"
        }
    .end annotation

    .line 140
    iget-object v0, p0, Lorg/litepal/LitePalBase;->mAssociationModels:Ljava/util/Collection;

    if-nez v0, :cond_0

    .line 141
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/litepal/LitePalBase;->mAssociationModels:Ljava/util/Collection;

    .line 143
    :cond_0
    iget-object v0, p0, Lorg/litepal/LitePalBase;->mGenericModels:Ljava/util/Collection;

    if-nez v0, :cond_1

    .line 144
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lorg/litepal/LitePalBase;->mGenericModels:Ljava/util/Collection;

    .line 146
    :cond_1
    iget-object v0, p0, Lorg/litepal/LitePalBase;->mAssociationModels:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 147
    iget-object v0, p0, Lorg/litepal/LitePalBase;->mGenericModels:Ljava/util/Collection;

    invoke-interface {v0}, Ljava/util/Collection;->clear()V

    .line 148
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const/4 v1, 0x1

    .line 149
    invoke-direct {p0, v0, v1}, Lorg/litepal/LitePalBase;->analyzeClassFields(Ljava/lang/String;I)V

    goto :goto_0

    .line 151
    :cond_2
    iget-object p1, p0, Lorg/litepal/LitePalBase;->mAssociationModels:Ljava/util/Collection;

    return-object p1
.end method

.method protected getColumnType(Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    .line 294
    iget-object v0, p0, Lorg/litepal/LitePalBase;->typeChangeRules:[Lorg/litepal/tablemanager/typechange/OrmChange;

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, v0, v2

    .line 295
    invoke-virtual {v3, p1}, Lorg/litepal/tablemanager/typechange/OrmChange;->object2Relation(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    return-object v3

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    .line 283
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p1, "_id"

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getGenericModels()Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Lorg/litepal/tablemanager/model/GenericModel;",
            ">;"
        }
    .end annotation

    .line 159
    iget-object v0, p0, Lorg/litepal/LitePalBase;->mGenericModels:Ljava/util/Collection;

    return-object v0
.end method

.method protected getGenericTypeClass(Ljava/lang/reflect/Field;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 312
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getGenericType()Ljava/lang/reflect/Type;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 314
    instance-of v0, p1, Ljava/lang/reflect/ParameterizedType;

    if-eqz v0, :cond_0

    .line 315
    check-cast p1, Ljava/lang/reflect/ParameterizedType;

    .line 316
    invoke-interface {p1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;

    move-result-object p1

    const/4 v0, 0x0

    aget-object p1, p1, v0

    check-cast p1, Ljava/lang/Class;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getGenericTypeName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 0

    .line 677
    invoke-virtual {p0, p1}, Lorg/litepal/LitePalBase;->getGenericTypeClass(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 679
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getSupportedFields(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 189
    iget-object v0, p0, Lorg/litepal/LitePalBase;->classFieldsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 191
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 194
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 198
    invoke-direct {p0, v1, v0}, Lorg/litepal/LitePalBase;->recursiveSupportedFields(Ljava/lang/Class;Ljava/util/List;)V

    .line 199
    iget-object v1, p0, Lorg/litepal/LitePalBase;->classFieldsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 196
    :catch_0
    new-instance v0, Lorg/litepal/exceptions/DatabaseGenerateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not find a class named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method protected getSupportedGenericFields(Ljava/lang/String;)Ljava/util/List;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;"
        }
    .end annotation

    .line 212
    iget-object v0, p0, Lorg/litepal/LitePalBase;->classGenericFieldsMap:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    if-nez v0, :cond_0

    .line 214
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 217
    :try_start_0
    invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 221
    invoke-direct {p0, v1, v0}, Lorg/litepal/LitePalBase;->recursiveSupportedGenericFields(Ljava/lang/Class;Ljava/util/List;)V

    .line 222
    iget-object v1, p0, Lorg/litepal/LitePalBase;->classGenericFieldsMap:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0

    .line 219
    :catch_0
    new-instance v0, Lorg/litepal/exceptions/DatabaseGenerateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not find a class named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_0
    return-object v0
.end method

.method protected getTableModel(Ljava/lang/String;)Lorg/litepal/tablemanager/model/TableModel;
    .locals 2

    .line 119
    invoke-static {p1}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 120
    new-instance v1, Lorg/litepal/tablemanager/model/TableModel;

    invoke-direct {v1}, Lorg/litepal/tablemanager/model/TableModel;-><init>()V

    .line 121
    invoke-virtual {v1, v0}, Lorg/litepal/tablemanager/model/TableModel;->setTableName(Ljava/lang/String;)V

    .line 122
    invoke-virtual {v1, p1}, Lorg/litepal/tablemanager/model/TableModel;->setClassName(Ljava/lang/String;)V

    .line 123
    invoke-virtual {p0, p1}, Lorg/litepal/LitePalBase;->getSupportedFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    .line 124
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 125
    invoke-direct {p0, v0}, Lorg/litepal/LitePalBase;->convertFieldToColumnModel(Ljava/lang/reflect/Field;)Lorg/litepal/tablemanager/model/ColumnModel;

    move-result-object v0

    .line 126
    invoke-virtual {v1, v0}, Lorg/litepal/tablemanager/model/TableModel;->addColumnModel(Lorg/litepal/tablemanager/model/ColumnModel;)V

    goto :goto_0

    :cond_0
    return-object v1
.end method

.method protected isCollection(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 236
    invoke-virtual {p0, p1}, Lorg/litepal/LitePalBase;->isList(Ljava/lang/Class;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0, p1}, Lorg/litepal/LitePalBase;->isSet(Ljava/lang/Class;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected isIdColumn(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "_id"

    .line 270
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "id"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method protected isList(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 247
    const-class v0, Ljava/util/List;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method

.method protected isSet(Ljava/lang/Class;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)Z"
        }
    .end annotation

    .line 258
    const-class v0, Ljava/util/Set;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p1

    return p1
.end method
