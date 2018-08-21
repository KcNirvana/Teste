.class Lcom/autonavi/its/common/IntHashMap$Entry;
.super Ljava/lang/Object;
.source "IntHashMap.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/autonavi/its/common/IntHashMap;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Entry"
.end annotation


# instance fields
.field final hash:I

.field next:Lcom/autonavi/its/common/IntHashMap$Entry;

.field value:Ljava/lang/Object;


# direct methods
.method protected constructor <init>(IILjava/lang/Object;Lcom/autonavi/its/common/IntHashMap$Entry;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/autonavi/its/common/IntHashMap$Entry;->hash:I

    iput-object p3, p0, Lcom/autonavi/its/common/IntHashMap$Entry;->value:Ljava/lang/Object;

    iput-object p4, p0, Lcom/autonavi/its/common/IntHashMap$Entry;->next:Lcom/autonavi/its/common/IntHashMap$Entry;

    return-void
.end method
