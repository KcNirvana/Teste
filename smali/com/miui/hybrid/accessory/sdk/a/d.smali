.class public Lcom/miui/hybrid/accessory/sdk/a/d;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/miui/hybrid/accessory/a/f/a;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field public static final bfN:Ljava/util/Map;

.field private static final bfO:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfP:Lcom/miui/hybrid/accessory/a/f/b/i;

.field private static final bfQ:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bfR:Lcom/miui/hybrid/accessory/a/f/b/k;


# instance fields
.field public a:I

.field public b:Ljava/lang/String;

.field public c:Ljava/util/Map;

.field private i:Ljava/util/BitSet;


# direct methods
.method static constructor <clinit>()V
    .locals 10

    const/16 v9, 0xd

    const/16 v4, 0x8

    const/16 v5, 0xb

    const/4 v8, 0x1

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/i;

    const-string/jumbo v1, "NativeAppQueryResult"

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/d;->bfP:Lcom/miui/hybrid/accessory/a/f/b/i;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "errorCode"

    invoke-direct {v0, v1, v4, v8}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/d;->bfQ:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "description"

    const/4 v2, 0x2

    invoke-direct {v0, v1, v5, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/d;->bfR:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "appQueryResultMap"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v9, v2}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/d;->bfO:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/miui/hybrid/accessory/sdk/a/d$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/d$a;->bgC:Lcom/miui/hybrid/accessory/sdk/a/d$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v4}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "errorCode"

    invoke-direct {v2, v4, v8, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/d$a;->bgD:Lcom/miui/hybrid/accessory/sdk/a/d$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v5}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "description"

    invoke-direct {v2, v4, v8, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/d$a;->bgE:Lcom/miui/hybrid/accessory/sdk/a/d$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/e;

    new-instance v4, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v4, v5}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    new-instance v5, Lcom/miui/hybrid/accessory/a/f/a/g;

    const/16 v6, 0xc

    const-class v7, Lcom/miui/hybrid/accessory/sdk/a/b;

    invoke-direct {v5, v6, v7}, Lcom/miui/hybrid/accessory/a/f/a/g;-><init>(BLjava/lang/Class;)V

    invoke-direct {v3, v9, v4, v5}, Lcom/miui/hybrid/accessory/a/f/a/e;-><init>(BLcom/miui/hybrid/accessory/a/f/a/c;Lcom/miui/hybrid/accessory/a/f/a/c;)V

    const-string/jumbo v4, "appQueryResultMap"

    invoke-direct {v2, v4, v8, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/d;->bfN:Ljava/util/Map;

    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/d;->bfN:Ljava/util/Map;

    const-class v1, Lcom/miui/hybrid/accessory/sdk/a/d;

    invoke-static {v1, v0}, Lcom/miui/hybrid/accessory/a/f/a/b;->bDq(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/BitSet;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/BitSet;-><init>(I)V

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->i:Ljava/util/BitSet;

    return-void
.end method


# virtual methods
.method public a(Z)V
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->i:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Ljava/util/BitSet;->set(IZ)V

    return-void
.end method

.method public a()Z
    .locals 2

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->i:Ljava/util/BitSet;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    return v0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bCb(Lcom/miui/hybrid/accessory/a/f/b/c;)V
    .locals 6

    const/4 v1, 0x0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->a()Lcom/miui/hybrid/accessory/a/f/b/i;

    :goto_0
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->c()Lcom/miui/hybrid/accessory/a/f/b/k;

    move-result-object v0

    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eqz v2, :cond_4

    iget-short v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->bhN:S

    packed-switch v2, :pswitch_data_0

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->d()V

    goto :goto_0

    :pswitch_0
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/16 v3, 0x8

    if-eq v2, v3, :cond_0

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->n()I

    move-result v0

    iput v0, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->a:I

    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/miui/hybrid/accessory/sdk/a/d;->a(Z)V

    goto :goto_1

    :pswitch_1
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/16 v3, 0xb

    if-eq v2, v3, :cond_1

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->b:Ljava/lang/String;

    goto :goto_1

    :pswitch_2
    iget-byte v2, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/16 v3, 0xd

    if-eq v2, v3, :cond_2

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->e()Lcom/miui/hybrid/accessory/a/f/b/b;

    move-result-object v2

    new-instance v0, Ljava/util/HashMap;

    iget v3, v2, Lcom/miui/hybrid/accessory/a/f/b/b;->c:I

    mul-int/lit8 v3, v3, 0x2

    invoke-direct {v0, v3}, Ljava/util/HashMap;-><init>(I)V

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->c:Ljava/util/Map;

    move v0, v1

    :goto_2
    iget v3, v2, Lcom/miui/hybrid/accessory/a/f/b/b;->c:I

    if-lt v0, v3, :cond_3

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->f()V

    goto :goto_1

    :cond_3
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Lcom/miui/hybrid/accessory/sdk/a/b;

    invoke-direct {v4}, Lcom/miui/hybrid/accessory/sdk/a/b;-><init>()V

    invoke-virtual {v4, p1}, Lcom/miui/hybrid/accessory/sdk/a/b;->bCb(Lcom/miui/hybrid/accessory/a/f/b/c;)V

    iget-object v5, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->c:Ljava/util/Map;

    invoke-interface {v5, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    :cond_4
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->b()V

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/d;->a()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/d;->e()V

    return-void

    :cond_5
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'errorCode\' was not found in serialized data! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public bCn(Lcom/miui/hybrid/accessory/sdk/a/d;)I
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/d;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/d;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/d;->a()Z

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/d;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/d;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_6

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/d;->b()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_1
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/d;->d()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/d;->d()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_8

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/d;->d()Z

    move-result v0

    if-nez v0, :cond_9

    :cond_2
    return v2

    :cond_3
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0

    :cond_4
    return v0

    :cond_5
    iget v0, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->a:I

    iget v1, p1, Lcom/miui/hybrid/accessory/sdk/a/d;->a:I

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDI(II)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_6
    return v0

    :cond_7
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/d;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0

    :cond_8
    return v0

    :cond_9
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/d;->c:Ljava/util/Map;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDD(Ljava/util/Map;Ljava/util/Map;)I

    move-result v0

    if-eqz v0, :cond_2

    return v0
.end method

.method public bCo(Lcom/miui/hybrid/accessory/sdk/a/d;)Z
    .locals 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    iget v0, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->a:I

    iget v1, p1, Lcom/miui/hybrid/accessory/sdk/a/d;->a:I

    if-ne v0, v1, :cond_3

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/d;->b()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/d;->b()Z

    move-result v1

    if-eqz v0, :cond_4

    :cond_0
    if-nez v0, :cond_8

    :cond_1
    return v2

    :cond_2
    return v2

    :cond_3
    return v2

    :cond_4
    if-nez v1, :cond_0

    :cond_5
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/d;->d()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/d;->d()Z

    move-result v1

    if-eqz v0, :cond_9

    :cond_6
    if-nez v0, :cond_b

    :cond_7
    return v2

    :cond_8
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    return v2

    :cond_9
    if-nez v1, :cond_6

    :cond_a
    return v3

    :cond_b
    if-eqz v1, :cond_7

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->c:Ljava/util/Map;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/d;->c:Ljava/util/Map;

    invoke-interface {v0, v1}, Ljava/util/Map;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    return v2
.end method

.method public c()Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->c:Ljava/util/Map;

    return-object v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/hybrid/accessory/sdk/a/d;

    invoke-virtual {p0, p1}, Lcom/miui/hybrid/accessory/sdk/a/d;->bCn(Lcom/miui/hybrid/accessory/sdk/a/d;)I

    move-result v0

    return v0
.end method

.method public d()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->c:Ljava/util/Map;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public e()V
    .locals 3

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->c:Ljava/util/Map;

    if-eqz v0, :cond_1

    return-void

    :cond_0
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'description\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'appQueryResultMap\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/d;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/hybrid/accessory/sdk/a/d;

    if-nez v0, :cond_1

    return v1

    :cond_0
    return v1

    :cond_1
    check-cast p1, Lcom/miui/hybrid/accessory/sdk/a/d;

    invoke-virtual {p0, p1}, Lcom/miui/hybrid/accessory/sdk/a/d;->bCo(Lcom/miui/hybrid/accessory/sdk/a/d;)Z

    move-result v0

    return v0
.end method

.method public hashCode()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string/jumbo v1, "NativeAppQueryResult("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "errorCode:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "description:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->b:Ljava/lang/String;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_0
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "appQueryResultMap:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->c:Ljava/util/Map;

    if-eqz v1, :cond_1

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/d;->c:Ljava/util/Map;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_1
    const-string/jumbo v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_1
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
