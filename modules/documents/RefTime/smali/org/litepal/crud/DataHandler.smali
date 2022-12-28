.class abstract Lorg/litepal/crud/DataHandler;
.super Lorg/litepal/LitePalBase;
.source "DataHandler.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/litepal/crud/DataHandler$QueryInfoCache;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "DataHandler"


# instance fields
.field private fkInCurrentModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;"
        }
    .end annotation
.end field

.field private fkInOtherModel:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDatabase:Landroid/database/sqlite/SQLiteDatabase;

.field private tempEmptyModel:Lorg/litepal/crud/LitePalSupport;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 58
    invoke-direct {p0}, Lorg/litepal/LitePalBase;-><init>()V

    return-void
.end method

.method private analyzeAssociations(Ljava/lang/String;)V
    .locals 4

    .line 1249
    invoke-virtual {p0, p1}, Lorg/litepal/crud/DataHandler;->getAssociationInfo(Ljava/lang/String;)Ljava/util/Collection;

    move-result-object v0

    .line 1250
    iget-object v1, p0, Lorg/litepal/crud/DataHandler;->fkInCurrentModel:Ljava/util/List;

    if-nez v1, :cond_0

    .line 1251
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/litepal/crud/DataHandler;->fkInCurrentModel:Ljava/util/List;

    goto :goto_0

    .line 1253
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1255
    :goto_0
    iget-object v1, p0, Lorg/litepal/crud/DataHandler;->fkInOtherModel:Ljava/util/List;

    if-nez v1, :cond_1

    .line 1256
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lorg/litepal/crud/DataHandler;->fkInOtherModel:Ljava/util/List;

    goto :goto_1

    .line 1258
    :cond_1
    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 1260
    :goto_1
    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/litepal/crud/model/AssociationsInfo;

    .line 1261
    invoke-virtual {v1}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_4

    .line 1262
    invoke-virtual {v1}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    goto :goto_3

    .line 1268
    :cond_3
    invoke-virtual {v1}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_2

    .line 1269
    iget-object v2, p0, Lorg/litepal/crud/DataHandler;->fkInOtherModel:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1263
    :cond_4
    :goto_3
    invoke-virtual {v1}, Lorg/litepal/crud/model/AssociationsInfo;->getClassHoldsForeignKey()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5

    .line 1264
    iget-object v2, p0, Lorg/litepal/crud/DataHandler;->fkInCurrentModel:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1266
    :cond_5
    iget-object v2, p0, Lorg/litepal/crud/DataHandler;->fkInOtherModel:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    :cond_6
    return-void
.end method

.method private genGetColumnMethod(Ljava/lang/Class;)Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 1149
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1150
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1152
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    .line 1154
    :goto_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "get"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "getBoolean"

    .line 1155
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string p1, "getInt"

    goto :goto_2

    :cond_1
    const-string v0, "getChar"

    .line 1157
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    const-string v0, "getCharacter"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const-string v0, "getDate"

    .line 1159
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    const-string p1, "getLong"

    goto :goto_2

    :cond_3
    const-string v0, "getInteger"

    .line 1161
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const-string p1, "getInt"

    goto :goto_2

    :cond_4
    const-string v0, "getbyte[]"

    .line 1163
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string p1, "getBlob"

    goto :goto_2

    :cond_5
    :goto_1
    const-string p1, "getString"

    :cond_6
    :goto_2
    return-object p1
.end method

.method private genGetColumnMethod(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 1

    .line 1128
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p0, v0}, Lorg/litepal/crud/DataHandler;->isCollection(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1129
    invoke-virtual {p0, p1}, Lorg/litepal/crud/DataHandler;->getGenericTypeClass(Ljava/lang/reflect/Field;)Ljava/lang/Class;

    move-result-object p1

    goto :goto_0

    .line 1131
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    .line 1133
    :goto_0
    invoke-direct {p0, p1}, Lorg/litepal/crud/DataHandler;->genGetColumnMethod(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private getCustomizedColumns([Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/List<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    if-eqz p1, :cond_a

    .line 1183
    array-length v0, p1

    if-lez v0, :cond_a

    .line 1185
    invoke-static {p1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 1186
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1187
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 1188
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1189
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1190
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1192
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/reflect/Field;

    .line 1193
    invoke-virtual {v5}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-interface {p1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 1196
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    const/4 v8, 0x1

    if-ge v5, v7, :cond_4

    .line 1197
    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 1199
    invoke-static {p1, v7}, Lorg/litepal/util/BaseUtility;->containsIgnoreCases(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 1200
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 1201
    :cond_1
    invoke-virtual {p0, v7}, Lorg/litepal/crud/DataHandler;->isIdColumn(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_3

    const-string v6, "_id"

    .line 1203
    invoke-virtual {v6, v7}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    const-string v6, "id"

    .line 1204
    invoke-static {v6}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-interface {v0, v5, v6}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    :cond_2
    const/4 v6, 0x1

    :cond_3
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 1210
    :cond_4
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result p1

    sub-int/2addr p1, v8

    :goto_3
    if-ltz p1, :cond_5

    .line 1211
    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 1212
    invoke-interface {v0, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 1213
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 p1, p1, -0x1

    goto :goto_3

    .line 1216
    :cond_5
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_6
    :goto_4
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/reflect/Field;

    .line 1217
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    .line 1218
    invoke-static {v2, v5}, Lorg/litepal/util/BaseUtility;->containsIgnoreCases(Ljava/util/Collection;Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 1219
    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 1223
    :cond_7
    invoke-interface {p2}, Ljava/util/List;->clear()V

    .line 1224
    invoke-interface {p2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-eqz p3, :cond_8

    .line 1226
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-lez p1, :cond_8

    .line 1227
    :goto_5
    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p1

    if-ge v4, p1, :cond_8

    .line 1229
    invoke-interface {p3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/litepal/crud/model/AssociationsInfo;

    .line 1230
    invoke-virtual {p1}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object p1

    .line 1229
    invoke-static {p1}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 1231
    invoke-virtual {p0, p1}, Lorg/litepal/crud/DataHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    :cond_8
    if-nez v6, :cond_9

    const-string p1, "id"

    .line 1235
    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1237
    :cond_9
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p1

    new-array p1, p1, [Ljava/lang/String;

    invoke-interface {v0, p1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Ljava/lang/String;

    return-object p1

    :cond_a
    const/4 p1, 0x0

    return-object p1
.end method

.method private getInitParamValue(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 922
    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "boolean"

    .line 923
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_11

    const-string v1, "java.lang.Boolean"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto/16 :goto_7

    :cond_0
    const-string v1, "float"

    .line 926
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    const-string v1, "java.lang.Float"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto/16 :goto_6

    :cond_1
    const-string v1, "double"

    .line 929
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    const-string v1, "java.lang.Double"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    goto/16 :goto_5

    :cond_2
    const-string v1, "int"

    .line 932
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_e

    const-string v1, "java.lang.Integer"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    goto/16 :goto_4

    :cond_3
    const-string v1, "long"

    .line 935
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    const-string v1, "java.lang.Long"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    goto :goto_3

    :cond_4
    const-string v1, "short"

    .line 938
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_c

    const-string v1, "java.lang.Short"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    const-string v1, "char"

    .line 941
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    const-string v1, "java.lang.Character"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_6

    goto :goto_1

    :cond_6
    const-string v1, "[B"

    .line 944
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    const-string v1, "[Ljava.lang.Byte;"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    goto :goto_0

    :cond_7
    const-string v1, "java.lang.String"

    .line 947
    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string p1, ""

    return-object p1

    :cond_8
    if-ne p1, p2, :cond_9

    const/4 p1, 0x0

    return-object p1

    .line 953
    :cond_9
    invoke-virtual {p0, p2}, Lorg/litepal/crud/DataHandler;->createInstanceFromClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 945
    :cond_a
    :goto_0
    new-array p1, v2, [B

    return-object p1

    :cond_b
    :goto_1
    const/16 p1, 0x20

    .line 942
    invoke-static {p1}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p1

    return-object p1

    .line 939
    :cond_c
    :goto_2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_d
    :goto_3
    const-wide/16 p1, 0x0

    .line 936
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    return-object p1

    .line 933
    :cond_e
    :goto_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    return-object p1

    :cond_f
    :goto_5
    const-wide/16 p1, 0x0

    .line 930
    invoke-static {p1, p2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object p1

    return-object p1

    :cond_10
    :goto_6
    const/4 p1, 0x0

    .line 927
    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    return-object p1

    .line 924
    :cond_11
    :goto_7
    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method

.method private getObjectType(Ljava/lang/Class;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    if-eqz p1, :cond_6

    .line 888
    invoke-virtual {p1}, Ljava/lang/Class;->isPrimitive()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 889
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "int"

    .line 890
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 891
    const-class p1, Ljava/lang/Integer;

    return-object p1

    :cond_0
    const-string v0, "short"

    .line 892
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 893
    const-class p1, Ljava/lang/Short;

    return-object p1

    :cond_1
    const-string v0, "long"

    .line 894
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 895
    const-class p1, Ljava/lang/Long;

    return-object p1

    :cond_2
    const-string v0, "float"

    .line 896
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 897
    const-class p1, Ljava/lang/Float;

    return-object p1

    :cond_3
    const-string v0, "double"

    .line 898
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 899
    const-class p1, Ljava/lang/Double;

    return-object p1

    :cond_4
    const-string v0, "boolean"

    .line 900
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 901
    const-class p1, Ljava/lang/Boolean;

    return-object p1

    :cond_5
    const-string v0, "char"

    .line 902
    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_6

    .line 903
    const-class p1, Ljava/lang/Character;

    return-object p1

    :cond_6
    const/4 p1, 0x0

    return-object p1
.end method

.method private isCharType(Ljava/lang/reflect/Field;)Z
    .locals 1

    .line 964
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    const-string v0, "char"

    .line 965
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Character"

    invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

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

.method private isFieldWithDefaultValue(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1059
    invoke-virtual {p0, p1}, Lorg/litepal/crud/DataHandler;->getEmptyModel(Lorg/litepal/crud/LitePalSupport;)Lorg/litepal/crud/LitePalSupport;

    move-result-object v0

    .line 1060
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->getFieldValue(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    .line 1061
    invoke-virtual {p0, v0, p2}, Lorg/litepal/crud/DataHandler;->getFieldValue(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p2

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1063
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 1064
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    .line 1065
    invoke-virtual {p1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1

    :cond_0
    if-ne p1, p2, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method private isPrimitiveBooleanType(Ljava/lang/reflect/Field;)Z
    .locals 1

    .line 979
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    const-string v0, "boolean"

    .line 980
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method private isSaving()Z
    .locals 2

    .line 1034
    const-class v0, Lorg/litepal/crud/SaveHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private isUpdating()Z
    .locals 2

    .line 1024
    const-class v0, Lorg/litepal/crud/UpdateHandler;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method private makeGetterMethodName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 2

    .line 1079
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    .line 1080
    invoke-direct {p0, p1}, Lorg/litepal/crud/DataHandler;->isPrimitiveBooleanType(Ljava/lang/reflect/Field;)Z

    move-result p1

    if-eqz p1, :cond_1

    const-string p1, "^is[A-Z]{1}.*$"

    .line 1081
    invoke-virtual {v0, p1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x2

    .line 1082
    invoke-virtual {v0, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    move-object v0, p1

    :cond_0
    const-string p1, "is"

    goto :goto_0

    :cond_1
    const-string p1, "get"

    :goto_0
    const-string v1, "^[a-z]{1}[A-Z]{1}.*"

    .line 1088
    invoke-virtual {v0, v1}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1089
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1

    .line 1091
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v0}, Lorg/litepal/util/BaseUtility;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method private makeSetterMethodName(Ljava/lang/reflect/Field;)Ljava/lang/String;
    .locals 3

    const-string v0, "set"

    .line 1105
    invoke-direct {p0, p1}, Lorg/litepal/crud/DataHandler;->isPrimitiveBooleanType(Ljava/lang/reflect/Field;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^is[A-Z]{1}.*$"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1106
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1107
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    const-string v2, "^[a-z]{1}[A-Z]{1}.*"

    invoke-virtual {v1, v2}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1108
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 1110
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->capitalize(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private putFieldsValueDependsOnSaveOrUpdate(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 1007
    invoke-direct {p0}, Lorg/litepal/crud/DataHandler;->isUpdating()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1008
    invoke-direct {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->isFieldWithDefaultValue(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1009
    invoke-virtual {p0, p1, p2, p3}, Lorg/litepal/crud/DataHandler;->putContentValuesForUpdate(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V

    goto :goto_0

    .line 1011
    :cond_0
    invoke-direct {p0}, Lorg/litepal/crud/DataHandler;->isSaving()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1012
    invoke-virtual {p0, p1, p2, p3}, Lorg/litepal/crud/DataHandler;->putContentValuesForSave(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private setAssociatedModel(Lorg/litepal/crud/LitePalSupport;)V
    .locals 26

    move-object/from16 v7, p0

    move-object/from16 v0, p1

    .line 1282
    iget-object v1, v7, Lorg/litepal/crud/DataHandler;->fkInOtherModel:Ljava/util/List;

    if-nez v1, :cond_0

    return-void

    .line 1285
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_1
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Lorg/litepal/crud/model/AssociationsInfo;

    .line 1287
    invoke-virtual {v9}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object v10

    .line 1288
    invoke-virtual {v9}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v2

    const/4 v3, 0x3

    const/4 v4, 0x0

    const/4 v11, 0x1

    if-ne v2, v3, :cond_2

    const/4 v12, 0x1

    goto :goto_1

    :cond_2
    const/4 v12, 0x0

    .line 1290
    :goto_1
    :try_start_0
    invoke-virtual {v7, v10}, Lorg/litepal/crud/DataHandler;->getSupportedFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v13

    .line 1291
    invoke-virtual {v7, v10}, Lorg/litepal/crud/DataHandler;->getSupportedGenericFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v14

    const/4 v15, 0x2

    if-eqz v12, :cond_3

    .line 1293
    invoke-virtual/range {p1 .. p1}, Lorg/litepal/crud/LitePalSupport;->getTableName()Ljava/lang/String;

    move-result-object v2

    .line 1295
    invoke-static {v10}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 1296
    invoke-static {v2, v3}, Lorg/litepal/util/DBUtility;->getIntermediateTableName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 1298
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "select * from "

    .line 1299
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " a inner join "

    .line 1300
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " b on a.id = b."

    .line 1301
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_id"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " where b."

    .line 1302
    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "_id = ?"

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 1303
    new-array v1, v15, [Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    .line 1304
    invoke-virtual/range {p1 .. p1}, Lorg/litepal/crud/LitePalSupport;->getBaseObjId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v11

    .line 1303
    invoke-static {v1}, Lorg/litepal/Operator;->findBySQL([Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    move-object v6, v1

    goto :goto_2

    .line 1307
    :cond_3
    invoke-virtual {v9}, Lorg/litepal/crud/model/AssociationsInfo;->getSelfClassName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1306
    invoke-virtual {v7, v1}, Lorg/litepal/crud/DataHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1309
    invoke-static {v10}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 1310
    iget-object v3, v7, Lorg/litepal/crud/DataHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-static {v2}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "=?"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    new-array v1, v11, [Ljava/lang/String;

    .line 1312
    invoke-virtual/range {p1 .. p1}, Lorg/litepal/crud/LitePalSupport;->getBaseObjId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v4

    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, 0x0

    const/16 v25, 0x0

    move-object/from16 v17, v3

    move-object/from16 v21, v1

    .line 1310
    invoke-virtual/range {v17 .. v25}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v6, v1

    :goto_2
    if-eqz v6, :cond_a

    .line 1315
    :try_start_1
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_a

    .line 1316
    new-instance v16, Landroid/util/SparseArray;

    invoke-direct/range {v16 .. v16}, Landroid/util/SparseArray;-><init>()V

    .line 1317
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 1319
    :goto_3
    invoke-static {v10}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v7, v1}, Lorg/litepal/crud/DataHandler;->createInstanceFromClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lorg/litepal/crud/LitePalSupport;

    const-string v1, "id"

    .line 1321
    invoke-interface {v6, v1}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    .line 1320
    invoke-virtual {v7, v4, v1, v2}, Lorg/litepal/crud/DataHandler;->giveBaseObjIdValue(Lorg/litepal/crud/LitePalSupport;J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    const/16 v17, 0x0

    move-object/from16 v1, p0

    move-object v2, v4

    move-object v3, v13

    move-object v11, v4

    move-object/from16 v4, v17

    move-object v15, v5

    move-object v5, v6

    move-object/from16 v19, v6

    move-object/from16 v6, v16

    .line 1322
    :try_start_2
    invoke-virtual/range {v1 .. v6}, Lorg/litepal/crud/DataHandler;->setValueToModel(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Landroid/database/Cursor;Landroid/util/SparseArray;)V

    .line 1323
    invoke-virtual {v7, v11, v14, v15}, Lorg/litepal/crud/DataHandler;->setGenericValueToModel(Lorg/litepal/crud/LitePalSupport;Ljava/util/List;Ljava/util/Map;)V

    .line 1324
    invoke-virtual {v9}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v1

    const/4 v2, 0x2

    if-eq v1, v2, :cond_5

    if-eqz v12, :cond_4

    goto :goto_4

    .line 1336
    :cond_4
    invoke-virtual {v9}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v1

    const/4 v3, 0x1

    if-ne v1, v3, :cond_8

    .line 1338
    invoke-virtual {v9}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateOtherModelFromSelf()Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1337
    invoke-virtual {v7, v0, v1, v11}, Lorg/litepal/crud/DataHandler;->setFieldValue(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;Ljava/lang/Object;)V

    goto :goto_6

    :cond_5
    :goto_4
    const/4 v3, 0x1

    .line 1325
    invoke-virtual {v9}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateOtherModelFromSelf()Ljava/lang/reflect/Field;

    move-result-object v1

    .line 1326
    invoke-virtual {v7, v0, v1}, Lorg/litepal/crud/DataHandler;->getFieldValue(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Collection;

    if-nez v4, :cond_7

    .line 1328
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v7, v4}, Lorg/litepal/crud/DataHandler;->isList(Ljava/lang/Class;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 1329
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_5

    .line 1331
    :cond_6
    new-instance v4, Ljava/util/HashSet;

    invoke-direct {v4}, Ljava/util/HashSet;-><init>()V

    .line 1333
    :goto_5
    invoke-virtual {v1}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-static {v0, v1, v4, v5}, Lorg/litepal/crud/DynamicExecutor;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1335
    :cond_7
    invoke-interface {v4, v11}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 1340
    :cond_8
    :goto_6
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1

    if-nez v1, :cond_9

    .line 1341
    invoke-virtual/range {v16 .. v16}, Landroid/util/SparseArray;->clear()V

    .line 1342
    invoke-interface {v15}, Ljava/util/Map;->clear()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_9

    :cond_9
    move-object v5, v15

    move-object/from16 v6, v19

    const/4 v11, 0x1

    const/4 v15, 0x2

    goto/16 :goto_3

    :catchall_0
    move-exception v0

    goto :goto_7

    :catch_0
    move-exception v0

    goto :goto_8

    :catchall_1
    move-exception v0

    move-object/from16 v19, v6

    :goto_7
    move-object/from16 v16, v19

    goto :goto_b

    :catch_1
    move-exception v0

    move-object/from16 v19, v6

    :goto_8
    move-object/from16 v1, v19

    goto :goto_a

    :cond_a
    move-object/from16 v19, v6

    :goto_9
    if-eqz v19, :cond_1

    .line 1348
    invoke-interface/range {v19 .. v19}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_2
    move-exception v0

    const/16 v16, 0x0

    goto :goto_b

    :catch_2
    move-exception v0

    const/4 v1, 0x0

    .line 1345
    :goto_a
    :try_start_3
    new-instance v2, Lorg/litepal/exceptions/LitePalSupportException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3, v0}, Lorg/litepal/exceptions/LitePalSupportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object/from16 v16, v1

    :goto_b
    if-eqz v16, :cond_b

    .line 1348
    invoke-interface/range {v16 .. v16}, Landroid/database/Cursor;->close()V

    :cond_b
    throw v0

    :cond_c
    return-void
.end method

.method private setToModelByReflection(Ljava/lang/Object;Ljava/lang/reflect/Field;ILjava/lang/String;Landroid/database/Cursor;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    .line 1357
    invoke-virtual {p5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const/4 v1, 0x1

    .line 1358
    new-array v2, v1, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v4, 0x0

    aput-object v3, v2, v4

    invoke-virtual {v0, p4, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p4

    .line 1359
    new-array v0, v1, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p3

    aput-object p3, v0, v4

    invoke-virtual {p4, p5, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 1360
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p4

    sget-object p5, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    if-eq p4, p5, :cond_4

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p4

    const-class p5, Ljava/lang/Boolean;

    if-ne p4, p5, :cond_0

    goto :goto_1

    .line 1366
    :cond_0
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p4

    sget-object p5, Ljava/lang/Character;->TYPE:Ljava/lang/Class;

    if-eq p4, p5, :cond_3

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p4

    const-class p5, Ljava/lang/Character;

    if-ne p4, p5, :cond_1

    goto :goto_0

    .line 1368
    :cond_1
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p4

    const-class p5, Ljava/util/Date;

    if-ne p4, p5, :cond_6

    .line 1369
    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    const-wide/16 v0, 0x0

    cmp-long p5, p3, v0

    if-gtz p5, :cond_2

    const/4 p3, 0x0

    goto :goto_2

    .line 1373
    :cond_2
    new-instance p5, Ljava/util/Date;

    invoke-direct {p5, p3, p4}, Ljava/util/Date;-><init>(J)V

    move-object p3, p5

    goto :goto_2

    .line 1367
    :cond_3
    :goto_0
    check-cast p3, Ljava/lang/String;

    invoke-virtual {p3, v4}, Ljava/lang/String;->charAt(I)C

    move-result p3

    invoke-static {p3}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object p3

    goto :goto_2

    :cond_4
    :goto_1
    const-string p4, "0"

    .line 1361
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_5

    .line 1362
    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    goto :goto_2

    :cond_5
    const-string p4, "1"

    .line 1363
    invoke-static {p3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p4, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_6

    .line 1364
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p3

    .line 1376
    :cond_6
    :goto_2
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p0, p4}, Lorg/litepal/crud/DataHandler;->isCollection(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 1377
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p5

    invoke-static {p1, p4, p5}, Lorg/litepal/crud/DynamicExecutor;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/util/Collection;

    if-nez p4, :cond_8

    .line 1379
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p0, p4}, Lorg/litepal/crud/DataHandler;->isList(Ljava/lang/Class;)Z

    move-result p4

    if-eqz p4, :cond_7

    .line 1380
    new-instance p4, Ljava/util/ArrayList;

    invoke-direct {p4}, Ljava/util/ArrayList;-><init>()V

    goto :goto_3

    .line 1382
    :cond_7
    new-instance p4, Ljava/util/HashSet;

    invoke-direct {p4}, Ljava/util/HashSet;-><init>()V

    .line 1384
    :goto_3
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p5

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, p5, p4, v0}, Lorg/litepal/crud/DynamicExecutor;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 1386
    :cond_8
    invoke-virtual {p0, p2}, Lorg/litepal/crud/DataHandler;->getGenericTypeName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object p5

    const-string v0, "java.lang.String"

    .line 1387
    invoke-virtual {v0, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 1388
    const-class p1, Lorg/litepal/annotation/Encrypt;

    invoke-virtual {p2, p1}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p1

    check-cast p1, Lorg/litepal/annotation/Encrypt;

    if-eqz p1, :cond_b

    .line 1390
    invoke-interface {p1}, Lorg/litepal/annotation/Encrypt;->algorithm()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1, p3}, Lorg/litepal/crud/DataHandler;->decryptValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    goto :goto_4

    .line 1392
    :cond_9
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2, p5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_b

    .line 1393
    instance-of p2, p3, Ljava/lang/Long;

    if-nez p2, :cond_a

    instance-of p2, p3, Ljava/lang/Integer;

    if-eqz p2, :cond_b

    .line 1394
    :cond_a
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p2

    invoke-static {p1, p2, p3}, Lorg/litepal/Operator;->find(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object p3

    .line 1397
    :cond_b
    :goto_4
    invoke-interface {p4, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_5

    .line 1399
    :cond_c
    const-class p4, Lorg/litepal/annotation/Encrypt;

    invoke-virtual {p2, p4}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object p4

    check-cast p4, Lorg/litepal/annotation/Encrypt;

    if-eqz p4, :cond_d

    const-string p5, "java.lang.String"

    .line 1400
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p5, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p5

    if-eqz p5, :cond_d

    .line 1401
    invoke-interface {p4}, Lorg/litepal/annotation/Encrypt;->algorithm()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p0, p4, p3}, Lorg/litepal/crud/DataHandler;->decryptValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    .line 1403
    :cond_d
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    .line 1404
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    .line 1403
    invoke-static {p1, p2, p3, p4}, Lorg/litepal/crud/DynamicExecutor;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    :goto_5
    return-void
.end method


# virtual methods
.method protected analyzeAssociatedModels(Lorg/litepal/crud/LitePalSupport;Ljava/util/Collection;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/LitePalSupport;",
            "Ljava/util/Collection<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;)V"
        }
    .end annotation

    .line 392
    :try_start_0
    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/litepal/crud/model/AssociationsInfo;

    .line 393
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 394
    new-instance v1, Lorg/litepal/crud/Many2OneAnalyzer;

    invoke-direct {v1}, Lorg/litepal/crud/Many2OneAnalyzer;-><init>()V

    invoke-virtual {v1, p1, v0}, Lorg/litepal/crud/Many2OneAnalyzer;->analyze(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)V

    goto :goto_0

    .line 395
    :cond_1
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v1

    const/4 v2, 0x1

    if-ne v1, v2, :cond_2

    .line 396
    new-instance v1, Lorg/litepal/crud/One2OneAnalyzer;

    invoke-direct {v1}, Lorg/litepal/crud/One2OneAnalyzer;-><init>()V

    invoke-virtual {v1, p1, v0}, Lorg/litepal/crud/One2OneAnalyzer;->analyze(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)V

    goto :goto_0

    .line 397
    :cond_2
    invoke-virtual {v0}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociationType()I

    move-result v1

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    .line 398
    new-instance v1, Lorg/litepal/crud/Many2ManyAnalyzer;

    invoke-direct {v1}, Lorg/litepal/crud/Many2ManyAnalyzer;-><init>()V

    invoke-virtual {v1, p1, v0}, Lorg/litepal/crud/Many2ManyAnalyzer;->analyze(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :cond_3
    return-void

    :catch_0
    move-exception p1

    .line 402
    new-instance p2, Lorg/litepal/exceptions/LitePalSupportException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/litepal/exceptions/LitePalSupportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    return-void
.end method

.method protected createInstanceFromClass(Ljava/lang/Class;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 633
    :try_start_0
    invoke-virtual {p0, p1}, Lorg/litepal/crud/DataHandler;->findBestSuitConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 634
    invoke-virtual {p0, p1, v0}, Lorg/litepal/crud/DataHandler;->getConstructorParams(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)[Ljava/lang/Object;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 636
    new-instance v0, Lorg/litepal/exceptions/LitePalSupportException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/litepal/exceptions/LitePalSupportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0
.end method

.method protected decryptValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const-string v0, "AES"

    .line 1418
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 1419
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lorg/litepal/util/cipher/CipherUtil;->aesDecrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_0
    return-object p2
.end method

.method protected encryptValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    if-eqz p1, :cond_1

    if-eqz p2, :cond_1

    const-string v0, "AES"

    .line 328
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 329
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lorg/litepal/util/cipher/CipherUtil;->aesEncrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    goto :goto_0

    :cond_0
    const-string v0, "MD5"

    .line 330
    invoke-virtual {v0, p1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 331
    check-cast p2, Ljava/lang/String;

    invoke-static {p2}, Lorg/litepal/util/cipher/CipherUtil;->md5Encrypt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    :cond_1
    :goto_0
    return-object p2
.end method

.method protected findBestSuitConstructor(Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    .locals 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/reflect/Constructor<",
            "*>;"
        }
    .end annotation

    .line 650
    invoke-virtual {p1}, Ljava/lang/Class;->getDeclaredConstructors()[Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 651
    new-instance v1, Landroid/util/SparseArray;

    invoke-direct {v1}, Landroid/util/SparseArray;-><init>()V

    .line 653
    array-length v2, v0

    const/4 v3, 0x0

    const v4, 0x7fffffff

    const/4 v4, 0x0

    const v5, 0x7fffffff

    :goto_0
    if-ge v4, v2, :cond_5

    aget-object v6, v0, v4

    .line 654
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v7

    array-length v7, v7

    .line 655
    invoke-virtual {v6}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object v8

    .line 656
    array-length v9, v8

    move v10, v7

    const/4 v7, 0x0

    :goto_1
    if-ge v7, v9, :cond_2

    aget-object v11, v8, v7

    if-ne v11, p1, :cond_0

    add-int/lit16 v10, v10, 0x2710

    goto :goto_2

    .line 659
    :cond_0
    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v12

    const-string v13, "com.android"

    invoke-virtual {v12, v13}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v12

    if-eqz v12, :cond_1

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    const-string v12, "InstantReloadException"

    invoke-virtual {v11, v12}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_1

    add-int/lit16 v10, v10, 0x2710

    :cond_1
    :goto_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 663
    :cond_2
    invoke-virtual {v1, v10}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    if-nez v7, :cond_3

    .line 664
    invoke-virtual {v1, v10, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    :cond_3
    if-ge v10, v5, :cond_4

    move v5, v10

    :cond_4
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 670
    :cond_5
    invoke-virtual {v1, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/reflect/Constructor;

    if-eqz p1, :cond_6

    const/4 v0, 0x1

    .line 672
    invoke-virtual {p1, v0}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    :cond_6
    return-object p1
.end method

.method protected getAssociatedModel(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)Lorg/litepal/crud/LitePalSupport;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 425
    invoke-virtual {p2}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateOtherModelFromSelf()Ljava/lang/reflect/Field;

    move-result-object p2

    .line 424
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->getFieldValue(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/litepal/crud/LitePalSupport;

    return-object p1
.end method

.method protected getAssociatedModels(Lorg/litepal/crud/LitePalSupport;Lorg/litepal/crud/model/AssociationsInfo;)Ljava/util/Collection;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/LitePalSupport;",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ")",
            "Ljava/util/Collection<",
            "Lorg/litepal/crud/LitePalSupport;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 449
    invoke-virtual {p2}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateOtherModelFromSelf()Ljava/lang/reflect/Field;

    move-result-object p2

    .line 448
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->getFieldValue(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Collection;

    return-object p1
.end method

.method protected getConstructorParams(Ljava/lang/Class;Ljava/lang/reflect/Constructor;)[Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/reflect/Constructor<",
            "*>;)[",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 689
    invoke-virtual {p2}, Ljava/lang/reflect/Constructor;->getParameterTypes()[Ljava/lang/Class;

    move-result-object p2

    .line 690
    array-length v0, p2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    .line 691
    :goto_0
    array-length v2, p2

    if-ge v1, v2, :cond_0

    .line 692
    aget-object v2, p2, v1

    invoke-direct {p0, p1, v2}, Lorg/litepal/crud/DataHandler;->getInitParamValue(Ljava/lang/Class;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    aput-object v2, v0, v1

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-object v0
.end method

.method protected getEmptyModel(Lorg/litepal/crud/LitePalSupport;)Lorg/litepal/crud/LitePalSupport;
    .locals 3

    .line 462
    iget-object v0, p0, Lorg/litepal/crud/DataHandler;->tempEmptyModel:Lorg/litepal/crud/LitePalSupport;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 467
    :try_start_0
    invoke-virtual {p1}, Lorg/litepal/crud/LitePalSupport;->getClassName()Ljava/lang/String;

    move-result-object v0

    .line 468
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p1

    .line 469
    invoke-virtual {p1}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/litepal/crud/LitePalSupport;

    iput-object p1, p0, Lorg/litepal/crud/DataHandler;->tempEmptyModel:Lorg/litepal/crud/LitePalSupport;

    .line 470
    iget-object p1, p0, Lorg/litepal/crud/DataHandler;->tempEmptyModel:Lorg/litepal/crud/LitePalSupport;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    .line 477
    new-instance v0, Lorg/litepal/exceptions/LitePalSupportException;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lorg/litepal/exceptions/LitePalSupportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 475
    new-instance v1, Lorg/litepal/exceptions/LitePalSupportException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, " needs a default constructor."

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0, p1}, Lorg/litepal/exceptions/LitePalSupportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 472
    :catch_2
    new-instance p1, Lorg/litepal/exceptions/DatabaseGenerateException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "can not find a class named "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Lorg/litepal/exceptions/DatabaseGenerateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected getFieldValue(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 354
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->shouldGetOrSet(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 355
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, p2, v0}, Lorg/litepal/crud/DynamicExecutor;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getForeignKeyAssociations(Ljava/lang/String;Z)Ljava/util/List;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Ljava/util/List<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;"
        }
    .end annotation

    if-eqz p2, :cond_0

    .line 839
    invoke-direct {p0, p1}, Lorg/litepal/crud/DataHandler;->analyzeAssociations(Ljava/lang/String;)V

    .line 840
    iget-object p1, p0, Lorg/litepal/crud/DataHandler;->fkInCurrentModel:Ljava/util/List;

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method protected getIntermediateTableName(Lorg/litepal/crud/LitePalSupport;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    .line 605
    invoke-virtual {p1}, Lorg/litepal/crud/LitePalSupport;->getTableName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, p2}, Lorg/litepal/util/DBUtility;->getIntermediateTableName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected getParameterTypes(Ljava/lang/reflect/Field;Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Class;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Field;",
            "Ljava/lang/Object;",
            "[",
            "Ljava/lang/Object;",
            ")[",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 861
    invoke-direct {p0, p1}, Lorg/litepal/crud/DataHandler;->isCharType(Ljava/lang/reflect/Field;)Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v0, :cond_0

    .line 862
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    aput-object p1, p3, v3

    .line 863
    new-array p1, v2, [Ljava/lang/Class;

    const-class p2, Ljava/lang/String;

    aput-object p2, p1, v1

    const-class p2, Ljava/lang/String;

    aput-object p2, p1, v3

    goto :goto_0

    .line 865
    :cond_0
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->isPrimitive()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 866
    new-array p2, v2, [Ljava/lang/Class;

    const-class p3, Ljava/lang/String;

    aput-object p3, p2, v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    invoke-direct {p0, p1}, Lorg/litepal/crud/DataHandler;->getObjectType(Ljava/lang/Class;)Ljava/lang/Class;

    move-result-object p1

    aput-object p1, p2, v3

    move-object p1, p2

    goto :goto_0

    :cond_1
    const-string p2, "java.util.Date"

    .line 867
    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p2, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_2

    .line 868
    new-array p1, v2, [Ljava/lang/Class;

    const-class p2, Ljava/lang/String;

    aput-object p2, p1, v1

    const-class p2, Ljava/lang/Long;

    aput-object p2, p1, v3

    goto :goto_0

    .line 870
    :cond_2
    new-array p2, v2, [Ljava/lang/Class;

    const-class p3, Ljava/lang/String;

    aput-object p3, p2, v1

    invoke-virtual {p1}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object p1

    aput-object p1, p2, v3

    move-object p1, p2

    :goto_0
    return-object p1
.end method

.method protected getTableName(Ljava/lang/Class;)Ljava/lang/String;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 618
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs getWhereArgs([Ljava/lang/String;)[Ljava/lang/String;
    .locals 4

    const/4 v0, 0x1

    .line 511
    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-virtual {p0, v1}, Lorg/litepal/crud/DataHandler;->isAffectAllLines([Ljava/lang/Object;)Z

    move-result v1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    return-object v3

    :cond_0
    if-eqz p1, :cond_1

    .line 514
    array-length v1, p1

    if-le v1, v0, :cond_1

    .line 515
    array-length v1, p1

    sub-int/2addr v1, v0

    new-array v1, v1, [Ljava/lang/String;

    .line 516
    array-length v3, p1

    sub-int/2addr v3, v0

    invoke-static {p1, v0, v1, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-object v1

    :cond_1
    return-object v3
.end method

.method protected varargs getWhereClause([Ljava/lang/String;)Ljava/lang/String;
    .locals 3

    const/4 v0, 0x1

    .line 491
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-virtual {p0, v0}, Lorg/litepal/crud/DataHandler;->isAffectAllLines([Ljava/lang/Object;)Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    return-object v2

    :cond_0
    if-eqz p1, :cond_1

    .line 494
    array-length v0, p1

    if-lez v0, :cond_1

    .line 495
    aget-object p1, p1, v1

    return-object p1

    :cond_1
    return-object v2
.end method

.method protected getWhereOfIdsWithOr(Ljava/util/Collection;)Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ljava/lang/Long;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    .line 546
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 548
    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    if-eqz v1, :cond_0

    const-string v1, " or "

    .line 550
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const/4 v1, 0x1

    const-string v4, "id = "

    .line 553
    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 554
    invoke-virtual {v0, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    goto :goto_0

    .line 556
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected varargs getWhereOfIdsWithOr([J)Ljava/lang/String;
    .locals 6

    .line 567
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 569
    array-length v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-wide v4, p1, v2

    if-eqz v3, :cond_0

    const-string v3, " or "

    .line 571
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_0
    const-string v3, "id = "

    .line 574
    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 575
    invoke-virtual {v0, v4, v5}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    add-int/lit8 v2, v2, 0x1

    const/4 v3, 0x1

    goto :goto_0

    .line 577
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method protected giveBaseObjIdValue(Lorg/litepal/crud/LitePalSupport;J)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchFieldException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;
        }
    .end annotation

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-lez v2, :cond_0

    const-string v0, "baseObjId"

    .line 213
    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-class p3, Lorg/litepal/crud/LitePalSupport;

    invoke-static {p1, v0, p2, p3}, Lorg/litepal/crud/DynamicExecutor;->set(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method protected varargs isAffectAllLines([Ljava/lang/Object;)Z
    .locals 0

    if-eqz p1, :cond_0

    .line 531
    array-length p1, p1

    if-nez p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method protected mathQuery(Ljava/lang/String;[Ljava/lang/String;[Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/Class<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 180
    invoke-static {p3}, Lorg/litepal/util/BaseUtility;->checkConditionsCorrect([Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 184
    :try_start_0
    iget-object v1, p0, Lorg/litepal/crud/DataHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    invoke-virtual {p0, p3}, Lorg/litepal/crud/DataHandler;->getWhereClause([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 185
    invoke-virtual {p0, p3}, Lorg/litepal/crud/DataHandler;->getWhereArgs([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    move-object v2, p1

    move-object v3, p2

    .line 184
    invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 186
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 187
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    .line 188
    invoke-direct {p0, p4}, Lorg/litepal/crud/DataHandler;->genGetColumnMethod(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object p3

    const/4 p4, 0x1

    new-array v0, p4, [Ljava/lang/Class;

    sget-object v1, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    invoke-virtual {p2, p3, v0}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object p2

    .line 189
    new-array p3, p4, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p4

    aput-object p4, p3, v2

    invoke-virtual {p2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_0
    if-eqz p1, :cond_1

    .line 195
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_1
    return-object v0

    :catchall_0
    move-exception p2

    goto :goto_1

    :catch_0
    move-exception p2

    move-object v0, p1

    goto :goto_0

    :catchall_1
    move-exception p2

    move-object p1, v0

    goto :goto_1

    :catch_1
    move-exception p2

    .line 192
    :goto_0
    :try_start_2
    new-instance p1, Lorg/litepal/exceptions/LitePalSupportException;

    invoke-virtual {p2}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p1, p3, p2}, Lorg/litepal/exceptions/LitePalSupportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :goto_1
    if-eqz p1, :cond_2

    .line 195
    invoke-interface {p1}, Landroid/database/Cursor;->close()V

    :cond_2
    throw p2
.end method

.method protected putContentValuesForSave(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 265
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p1, v0, v1}, Lorg/litepal/crud/DynamicExecutor;->getField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_2

    const-string v0, "java.util.Date"

    .line 268
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 269
    check-cast p1, Ljava/util/Date;

    .line 270
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 272
    :cond_0
    const-class v0, Lorg/litepal/annotation/Encrypt;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/litepal/annotation/Encrypt;

    if-eqz v0, :cond_1

    const-string v1, "java.lang.String"

    .line 273
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 274
    invoke-interface {v0}, Lorg/litepal/annotation/Encrypt;->algorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/litepal/crud/DataHandler;->encryptValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    const/4 v0, 0x2

    .line 276
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/util/DBUtility;->convertToValidColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 277
    invoke-virtual {p0, p2, p1, v0}, Lorg/litepal/crud/DataHandler;->getParameterTypes(Ljava/lang/reflect/Field;Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p1

    const-string p2, "put"

    .line 278
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p3, p2, v0, v1, p1}, Lorg/litepal/crud/DynamicExecutor;->send(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method protected putContentValuesForUpdate(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 304
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->getFieldValue(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "java.util.Date"

    .line 305
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz p1, :cond_0

    .line 306
    check-cast p1, Ljava/util/Date;

    .line 307
    invoke-virtual {p1}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    .line 309
    :cond_0
    const-class v0, Lorg/litepal/annotation/Encrypt;

    invoke-virtual {p2, v0}, Ljava/lang/reflect/Field;->getAnnotation(Ljava/lang/Class;)Ljava/lang/annotation/Annotation;

    move-result-object v0

    check-cast v0, Lorg/litepal/annotation/Encrypt;

    if-eqz v0, :cond_1

    const-string v1, "java.lang.String"

    .line 310
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getType()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 311
    invoke-interface {v0}, Lorg/litepal/annotation/Encrypt;->algorithm()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lorg/litepal/crud/DataHandler;->encryptValue(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    :cond_1
    const/4 v0, 0x2

    .line 313
    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/util/DBUtility;->convertToValidColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v1

    const/4 v1, 0x1

    aput-object p1, v0, v1

    .line 314
    invoke-virtual {p0, p2, p1, v0}, Lorg/litepal/crud/DataHandler;->getParameterTypes(Ljava/lang/reflect/Field;Ljava/lang/Object;[Ljava/lang/Object;)[Ljava/lang/Class;

    move-result-object p1

    const-string p2, "put"

    .line 315
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-static {p3, p2, v0, v1, p1}, Lorg/litepal/crud/DynamicExecutor;->send(Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;Ljava/lang/Class;[Ljava/lang/Class;)Ljava/lang/Object;

    return-void
.end method

.method protected putFieldsValue(Lorg/litepal/crud/LitePalSupport;Ljava/util/List;Landroid/content/ContentValues;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/LitePalSupport;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Landroid/content/ContentValues;",
            ")V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 236
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_0
    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 237
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lorg/litepal/crud/DataHandler;->isIdColumn(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 238
    invoke-direct {p0, p1, v0, p3}, Lorg/litepal/crud/DataHandler;->putFieldsValueDependsOnSaveOrUpdate(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;Landroid/content/ContentValues;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method protected query(Ljava/lang/Class;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)Ljava/util/List;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p9

    .line 126
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    .line 129
    :try_start_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Lorg/litepal/crud/DataHandler;->getSupportedFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v4

    .line 130
    invoke-virtual/range {p1 .. p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Lorg/litepal/crud/DataHandler;->getSupportedGenericFields(Ljava/lang/String;)Ljava/util/List;

    move-result-object v5

    move-object/from16 v6, p2

    .line 131
    invoke-direct {v1, v6, v5, v0}, Lorg/litepal/crud/DataHandler;->getCustomizedColumns([Ljava/lang/String;Ljava/util/List;Ljava/util/List;)[Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/litepal/util/DBUtility;->convertSelectClauseToValidNames([Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v9

    .line 132
    invoke-virtual/range {p0 .. p1}, Lorg/litepal/crud/DataHandler;->getTableName(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v8

    .line 133
    iget-object v7, v1, Lorg/litepal/crud/DataHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    move-object/from16 v10, p3

    move-object/from16 v11, p4

    move-object/from16 v12, p5

    move-object/from16 v13, p6

    move-object/from16 v14, p7

    move-object/from16 v15, p8

    invoke-virtual/range {v7 .. v15}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v3

    .line 135
    invoke-interface {v3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v6

    if-eqz v6, :cond_2

    .line 136
    new-instance v6, Landroid/util/SparseArray;

    invoke-direct {v6}, Landroid/util/SparseArray;-><init>()V

    .line 137
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    .line 139
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lorg/litepal/crud/DataHandler;->createInstanceFromClass(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v8

    .line 140
    move-object v9, v8

    check-cast v9, Lorg/litepal/crud/LitePalSupport;

    const-string v10, "id"

    .line 141
    invoke-interface {v3, v10}, Landroid/database/Cursor;->getColumnIndexOrThrow(Ljava/lang/String;)I

    move-result v10

    invoke-interface {v3, v10}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v10

    .line 140
    invoke-virtual {v1, v9, v10, v11}, Lorg/litepal/crud/DataHandler;->giveBaseObjIdValue(Lorg/litepal/crud/LitePalSupport;J)V

    move-object/from16 p2, p0

    move-object/from16 p3, v8

    move-object/from16 p4, v4

    move-object/from16 p5, p9

    move-object/from16 p6, v3

    move-object/from16 p7, v6

    .line 142
    invoke-virtual/range {p2 .. p7}, Lorg/litepal/crud/DataHandler;->setValueToModel(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Landroid/database/Cursor;Landroid/util/SparseArray;)V

    .line 143
    move-object v9, v8

    check-cast v9, Lorg/litepal/crud/LitePalSupport;

    invoke-virtual {v1, v9, v5, v7}, Lorg/litepal/crud/DataHandler;->setGenericValueToModel(Lorg/litepal/crud/LitePalSupport;Ljava/util/List;Ljava/util/Map;)V

    if-eqz v0, :cond_1

    .line 145
    move-object v9, v8

    check-cast v9, Lorg/litepal/crud/LitePalSupport;

    invoke-direct {v1, v9}, Lorg/litepal/crud/DataHandler;->setAssociatedModel(Lorg/litepal/crud/LitePalSupport;)V

    .line 147
    :cond_1
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 148
    invoke-interface {v3}, Landroid/database/Cursor;->moveToNext()Z

    move-result v8

    if-nez v8, :cond_0

    .line 149
    invoke-virtual {v6}, Landroid/util/SparseArray;->clear()V

    .line 150
    invoke-interface {v7}, Ljava/util/Map;->clear()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    if-eqz v3, :cond_3

    .line 157
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_3
    return-object v2

    :catchall_0
    move-exception v0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 154
    :try_start_1
    new-instance v2, Lorg/litepal/exceptions/LitePalSupportException;

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4, v0}, Lorg/litepal/exceptions/LitePalSupportException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    if-eqz v3, :cond_4

    .line 157
    invoke-interface {v3}, Landroid/database/Cursor;->close()V

    :cond_4
    throw v0

    return-void
.end method

.method protected setFieldValue(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 378
    invoke-virtual {p0, p1, p2}, Lorg/litepal/crud/DataHandler;->shouldGetOrSet(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    invoke-virtual {p2}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-static {p1, p2, p3, v0}, Lorg/litepal/crud/DynamicExecutor;->setField(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    :cond_0
    return-void
.end method

.method protected setGenericValueToModel(Lorg/litepal/crud/LitePalSupport;Ljava/util/List;Ljava/util/Map;)V
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/litepal/crud/LitePalSupport;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/reflect/Field;",
            "Lorg/litepal/tablemanager/model/GenericModel;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    move-object/from16 v7, p0

    move-object/from16 v0, p3

    .line 782
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v8

    :cond_0
    :goto_0
    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v9, v1

    check-cast v9, Ljava/lang/reflect/Field;

    const/4 v1, 0x0

    .line 785
    invoke-interface {v0, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/litepal/tablemanager/model/GenericModel;

    if-nez v2, :cond_2

    .line 787
    invoke-virtual {v7, v9}, Lorg/litepal/crud/DataHandler;->getGenericTypeName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    .line 788
    invoke-virtual/range {p1 .. p1}, Lorg/litepal/crud/LitePalSupport;->getClassName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 789
    invoke-static {v9}, Lorg/litepal/util/DBUtility;->getM2MSelfRefColumnName(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "getLong"

    goto :goto_1

    .line 792
    :cond_1
    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/util/DBUtility;->convertToValidColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 793
    invoke-direct {v7, v9}, Lorg/litepal/crud/DataHandler;->genGetColumnMethod(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v3

    .line 795
    :goto_1
    invoke-virtual/range {p1 .. p1}, Lorg/litepal/crud/LitePalSupport;->getClassName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v9}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Lorg/litepal/util/DBUtility;->getGenericTableName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 796
    invoke-virtual/range {p1 .. p1}, Lorg/litepal/crud/LitePalSupport;->getClassName()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lorg/litepal/util/DBUtility;->getGenericValueIdColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 797
    new-instance v6, Lorg/litepal/tablemanager/model/GenericModel;

    invoke-direct {v6}, Lorg/litepal/tablemanager/model/GenericModel;-><init>()V

    .line 798
    invoke-virtual {v6, v4}, Lorg/litepal/tablemanager/model/GenericModel;->setTableName(Ljava/lang/String;)V

    .line 799
    invoke-virtual {v6, v2}, Lorg/litepal/tablemanager/model/GenericModel;->setValueColumnName(Ljava/lang/String;)V

    .line 800
    invoke-virtual {v6, v5}, Lorg/litepal/tablemanager/model/GenericModel;->setValueIdColumnName(Ljava/lang/String;)V

    .line 801
    invoke-virtual {v6, v3}, Lorg/litepal/tablemanager/model/GenericModel;->setGetMethodName(Ljava/lang/String;)V

    .line 802
    invoke-interface {v0, v9, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v18, v2

    move-object/from16 v19, v3

    move-object v11, v4

    goto :goto_2

    .line 804
    :cond_2
    invoke-virtual {v2}, Lorg/litepal/tablemanager/model/GenericModel;->getTableName()Ljava/lang/String;

    move-result-object v4

    .line 805
    invoke-virtual {v2}, Lorg/litepal/tablemanager/model/GenericModel;->getValueColumnName()Ljava/lang/String;

    move-result-object v3

    .line 806
    invoke-virtual {v2}, Lorg/litepal/tablemanager/model/GenericModel;->getValueIdColumnName()Ljava/lang/String;

    move-result-object v5

    .line 807
    invoke-virtual {v2}, Lorg/litepal/tablemanager/model/GenericModel;->getGetMethodName()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v19, v2

    move-object/from16 v18, v3

    move-object v11, v4

    .line 810
    :goto_2
    :try_start_0
    iget-object v10, v7, Lorg/litepal/crud/DataHandler;->mDatabase:Landroid/database/sqlite/SQLiteDatabase;

    const/4 v12, 0x0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " = ?"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    const/4 v2, 0x1

    new-array v14, v2, [Ljava/lang/String;

    const/4 v2, 0x0

    .line 811
    invoke-virtual/range {p1 .. p1}, Lorg/litepal/crud/LitePalSupport;->getBaseObjId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v14, v2

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    .line 810
    invoke-virtual/range {v10 .. v17}, Landroid/database/sqlite/SQLiteDatabase;->query(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 812
    :try_start_1
    invoke-interface {v10}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 814
    :cond_3
    invoke-static/range {v18 .. v18}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v10, v1}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v4

    const/4 v1, -0x1

    if-eq v4, v1, :cond_4

    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object v3, v9

    move-object/from16 v5, v19

    move-object v6, v10

    .line 816
    invoke-direct/range {v1 .. v6}, Lorg/litepal/crud/DataHandler;->setToModelByReflection(Ljava/lang/Object;Ljava/lang/reflect/Field;ILjava/lang/String;Landroid/database/Cursor;)V

    .line 818
    :cond_4
    invoke-interface {v10}, Landroid/database/Cursor;->moveToNext()Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-nez v1, :cond_3

    :cond_5
    if-eqz v10, :cond_0

    .line 822
    invoke-interface {v10}, Landroid/database/Cursor;->close()V

    goto/16 :goto_0

    :catchall_0
    move-exception v0

    move-object v1, v10

    goto :goto_3

    :catchall_1
    move-exception v0

    :goto_3
    if-eqz v1, :cond_6

    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    :cond_6
    throw v0

    :cond_7
    return-void
.end method

.method protected setValueToModel(Ljava/lang/Object;Ljava/util/List;Ljava/util/List;Landroid/database/Cursor;Landroid/util/SparseArray;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ljava/util/List<",
            "Ljava/lang/reflect/Field;",
            ">;",
            "Ljava/util/List<",
            "Lorg/litepal/crud/model/AssociationsInfo;",
            ">;",
            "Landroid/database/Cursor;",
            "Landroid/util/SparseArray<",
            "Lorg/litepal/crud/DataHandler$QueryInfoCache;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;,
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .line 722
    invoke-virtual {p5}, Landroid/util/SparseArray;->size()I

    move-result v0

    const/4 v1, -0x1

    if-lez v0, :cond_0

    const/4 p2, 0x0

    :goto_0
    if-ge p2, v0, :cond_3

    .line 725
    invoke-virtual {p5, p2}, Landroid/util/SparseArray;->keyAt(I)I

    move-result v5

    .line 726
    invoke-virtual {p5, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/litepal/crud/DataHandler$QueryInfoCache;

    .line 727
    iget-object v4, v2, Lorg/litepal/crud/DataHandler$QueryInfoCache;->field:Ljava/lang/reflect/Field;

    iget-object v6, v2, Lorg/litepal/crud/DataHandler$QueryInfoCache;->getMethodName:Ljava/lang/String;

    move-object v2, p0

    move-object v3, p1

    move-object v7, p4

    invoke-direct/range {v2 .. v7}, Lorg/litepal/crud/DataHandler;->setToModelByReflection(Ljava/lang/Object;Ljava/lang/reflect/Field;ILjava/lang/String;Landroid/database/Cursor;)V

    add-int/lit8 p2, p2, 0x1

    goto :goto_0

    .line 730
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_1
    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/reflect/Field;

    .line 731
    invoke-direct {p0, v0}, Lorg/litepal/crud/DataHandler;->genGetColumnMethod(Ljava/lang/reflect/Field;)Ljava/lang/String;

    move-result-object v8

    .line 732
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/litepal/crud/DataHandler;->isIdColumn(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    const-string v2, "id"

    goto :goto_2

    :cond_2
    invoke-virtual {v0}, Ljava/lang/reflect/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/litepal/util/DBUtility;->convertToValidColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 733
    :goto_2
    invoke-static {v2}, Lorg/litepal/util/BaseUtility;->changeCase(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {p4, v2}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v9

    if-eq v9, v1, :cond_1

    move-object v2, p0

    move-object v3, p1

    move-object v4, v0

    move v5, v9

    move-object v6, v8

    move-object v7, p4

    .line 735
    invoke-direct/range {v2 .. v7}, Lorg/litepal/crud/DataHandler;->setToModelByReflection(Ljava/lang/Object;Ljava/lang/reflect/Field;ILjava/lang/String;Landroid/database/Cursor;)V

    .line 736
    new-instance v2, Lorg/litepal/crud/DataHandler$QueryInfoCache;

    invoke-direct {v2, p0}, Lorg/litepal/crud/DataHandler$QueryInfoCache;-><init>(Lorg/litepal/crud/DataHandler;)V

    .line 737
    iput-object v8, v2, Lorg/litepal/crud/DataHandler$QueryInfoCache;->getMethodName:Ljava/lang/String;

    .line 738
    iput-object v0, v2, Lorg/litepal/crud/DataHandler$QueryInfoCache;->field:Ljava/lang/reflect/Field;

    .line 739
    invoke-virtual {p5, v9, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_1

    :cond_3
    if-eqz p3, :cond_5

    .line 745
    invoke-interface {p3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_4
    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lorg/litepal/crud/model/AssociationsInfo;

    .line 747
    invoke-virtual {p3}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Lorg/litepal/util/DBUtility;->getTableNameByClassName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 746
    invoke-virtual {p0, p5}, Lorg/litepal/crud/DataHandler;->getForeignKeyColumnName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p5

    .line 748
    invoke-interface {p4, p5}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result p5

    if-eq p5, v1, :cond_4

    .line 750
    invoke-interface {p4, p5}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    .line 753
    :try_start_0
    invoke-virtual {p3}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociatedClassName()Ljava/lang/String;

    move-result-object p5

    invoke-static {p5}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object p5

    .line 752
    invoke-static {p5, v2, v3}, Lorg/litepal/Operator;->find(Ljava/lang/Class;J)Ljava/lang/Object;

    move-result-object p5

    check-cast p5, Lorg/litepal/crud/LitePalSupport;

    if-eqz p5, :cond_4

    .line 756
    move-object v0, p1

    check-cast v0, Lorg/litepal/crud/LitePalSupport;

    .line 757
    invoke-virtual {p3}, Lorg/litepal/crud/model/AssociationsInfo;->getAssociateOtherModelFromSelf()Ljava/lang/reflect/Field;

    move-result-object p3

    .line 756
    invoke-virtual {p0, v0, p3, p5}, Lorg/litepal/crud/DataHandler;->setFieldValue(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_3

    :catch_0
    move-exception p3

    .line 760
    invoke-virtual {p3}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    goto :goto_3

    :cond_5
    return-void
.end method

.method protected shouldGetOrSet(Lorg/litepal/crud/LitePalSupport;Ljava/lang/reflect/Field;)Z
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
