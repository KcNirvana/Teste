.class public Lcom/miui/hybrid/accessory/sdk/a/f;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/miui/hybrid/accessory/a/f/a;
.implements Ljava/io/Serializable;
.implements Ljava/lang/Cloneable;


# static fields
.field private static final beA:Lcom/miui/hybrid/accessory/a/f/b/k;

.field private static final bey:Lcom/miui/hybrid/accessory/a/f/b/i;

.field private static final bez:Lcom/miui/hybrid/accessory/a/f/b/k;

.field public static final c:Ljava/util/Map;


# instance fields
.field public a:Lcom/miui/hybrid/accessory/sdk/a/h;

.field public b:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 9

    const/16 v8, 0xb

    const/4 v7, 0x2

    const/4 v6, 0x1

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/i;

    const-string/jumbo v1, "ResultState"

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/i;-><init>(Ljava/lang/String;)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/f;->bey:Lcom/miui/hybrid/accessory/a/f/b/i;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "state"

    const/16 v2, 0x8

    invoke-direct {v0, v1, v2, v6}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/f;->bez:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/k;

    const-string/jumbo v1, "packageName"

    invoke-direct {v0, v1, v8, v7}, Lcom/miui/hybrid/accessory/a/f/b/k;-><init>(Ljava/lang/String;BS)V

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/f;->beA:Lcom/miui/hybrid/accessory/a/f/b/k;

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/miui/hybrid/accessory/sdk/a/f$a;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/f$a;->bgP:Lcom/miui/hybrid/accessory/sdk/a/f$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/a;

    const/16 v4, 0x10

    const-class v5, Lcom/miui/hybrid/accessory/sdk/a/h;

    invoke-direct {v3, v4, v5}, Lcom/miui/hybrid/accessory/a/f/a/a;-><init>(BLjava/lang/Class;)V

    const-string/jumbo v4, "state"

    invoke-direct {v2, v4, v6, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v1, Lcom/miui/hybrid/accessory/sdk/a/f$a;->bgO:Lcom/miui/hybrid/accessory/sdk/a/f$a;

    new-instance v2, Lcom/miui/hybrid/accessory/a/f/a/b;

    new-instance v3, Lcom/miui/hybrid/accessory/a/f/a/c;

    invoke-direct {v3, v8}, Lcom/miui/hybrid/accessory/a/f/a/c;-><init>(B)V

    const-string/jumbo v4, "packageName"

    invoke-direct {v2, v4, v7, v3}, Lcom/miui/hybrid/accessory/a/f/a/b;-><init>(Ljava/lang/String;BLcom/miui/hybrid/accessory/a/f/a/c;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    sput-object v0, Lcom/miui/hybrid/accessory/sdk/a/f;->c:Ljava/util/Map;

    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/f;->c:Ljava/util/Map;

    const-class v1, Lcom/miui/hybrid/accessory/sdk/a/f;

    invoke-static {v1, v0}, Lcom/miui/hybrid/accessory/a/f/a/b;->bDq(Ljava/lang/Class;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/hybrid/accessory/sdk/a/h;->a:Lcom/miui/hybrid/accessory/sdk/a/h;

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/f;->a:Lcom/miui/hybrid/accessory/sdk/a/h;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/f;->a:Lcom/miui/hybrid/accessory/sdk/a/h;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public b()Z
    .locals 1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/f;->b:Ljava/lang/String;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public bBZ(Lcom/miui/hybrid/accessory/sdk/a/f;)I
    .locals 3

    const/4 v2, 0x0

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/f;->a()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/f;->a()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/f;->a()Z

    move-result v0

    if-nez v0, :cond_4

    :cond_0
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/f;->b()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/f;->b()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Boolean;->compareTo(Ljava/lang/Boolean;)I

    move-result v0

    if-nez v0, :cond_5

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/f;->b()Z

    move-result v0

    if-nez v0, :cond_6

    :cond_1
    return v2

    :cond_2
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

    :cond_3
    return v0

    :cond_4
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/f;->a:Lcom/miui/hybrid/accessory/sdk/a/h;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/f;->a:Lcom/miui/hybrid/accessory/sdk/a/h;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->bDK(Ljava/lang/Comparable;Ljava/lang/Comparable;)I

    move-result v0

    if-eqz v0, :cond_0

    return v0

    :cond_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/f;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/f;->b:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/miui/hybrid/accessory/a/f/f;->a(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    return v0
.end method

.method public bCa(Lcom/miui/hybrid/accessory/sdk/a/f;)Z
    .locals 3

    const/4 v2, 0x0

    if-eqz p1, :cond_2

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/f;->a()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/f;->a()Z

    move-result v1

    if-eqz v0, :cond_3

    :cond_0
    if-nez v0, :cond_7

    :cond_1
    return v2

    :cond_2
    return v2

    :cond_3
    if-nez v1, :cond_0

    :cond_4
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/f;->b()Z

    move-result v0

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/sdk/a/f;->b()Z

    move-result v1

    if-eqz v0, :cond_8

    :cond_5
    if-nez v0, :cond_a

    :cond_6
    return v2

    :cond_7
    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/f;->a:Lcom/miui/hybrid/accessory/sdk/a/h;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/f;->a:Lcom/miui/hybrid/accessory/sdk/a/h;

    invoke-virtual {v0, v1}, Lcom/miui/hybrid/accessory/sdk/a/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    return v2

    :cond_8
    if-nez v1, :cond_5

    :cond_9
    const/4 v0, 0x1

    return v0

    :cond_a
    if-eqz v1, :cond_6

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/f;->b:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/hybrid/accessory/sdk/a/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    return v2
.end method

.method public bCb(Lcom/miui/hybrid/accessory/a/f/b/c;)V
    .locals 3

    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->a()Lcom/miui/hybrid/accessory/a/f/b/i;

    :goto_0
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->c()Lcom/miui/hybrid/accessory/a/f/b/k;

    move-result-object v0

    iget-byte v1, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    if-eqz v1, :cond_2

    iget-short v1, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->bhN:S

    packed-switch v1, :pswitch_data_0

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    :goto_1
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->d()V

    goto :goto_0

    :pswitch_0
    iget-byte v1, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/16 v2, 0x8

    if-eq v1, v2, :cond_0

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_0
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->n()I

    move-result v0

    invoke-static {v0}, Lcom/miui/hybrid/accessory/sdk/a/h;->a(I)Lcom/miui/hybrid/accessory/sdk/a/h;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/f;->a:Lcom/miui/hybrid/accessory/sdk/a/h;

    goto :goto_1

    :pswitch_1
    iget-byte v1, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    const/16 v2, 0xb

    if-eq v1, v2, :cond_1

    iget-byte v0, v0, Lcom/miui/hybrid/accessory/a/f/b/k;->b:B

    invoke-static {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/h;->bDv(Lcom/miui/hybrid/accessory/a/f/b/c;B)V

    goto :goto_1

    :cond_1
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->q()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/f;->b:Ljava/lang/String;

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Lcom/miui/hybrid/accessory/a/f/b/c;->b()V

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/f;->c()V

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public c()V
    .locals 3

    iget-object v0, p0, Lcom/miui/hybrid/accessory/sdk/a/f;->a:Lcom/miui/hybrid/accessory/sdk/a/h;

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/f;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Required field \'state\' was not present! Struct: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/f;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/miui/hybrid/accessory/a/f/b/f;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/hybrid/accessory/sdk/a/f;

    invoke-virtual {p0, p1}, Lcom/miui/hybrid/accessory/sdk/a/f;->bBZ(Lcom/miui/hybrid/accessory/sdk/a/f;)I

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 2

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    instance-of v0, p1, Lcom/miui/hybrid/accessory/sdk/a/f;

    if-nez v0, :cond_1

    return v1

    :cond_0
    return v1

    :cond_1
    check-cast p1, Lcom/miui/hybrid/accessory/sdk/a/f;

    invoke-virtual {p0, p1}, Lcom/miui/hybrid/accessory/sdk/a/f;->bCa(Lcom/miui/hybrid/accessory/sdk/a/f;)Z

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

    const-string/jumbo v1, "ResultState("

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "state:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/f;->a:Lcom/miui/hybrid/accessory/sdk/a/h;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/f;->a:Lcom/miui/hybrid/accessory/sdk/a/h;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    :goto_0
    invoke-virtual {p0}, Lcom/miui/hybrid/accessory/sdk/a/f;->b()Z

    move-result v1

    if-nez v1, :cond_1

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
    const-string/jumbo v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string/jumbo v1, "packageName:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/f;->b:Ljava/lang/String;

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/miui/hybrid/accessory/sdk/a/f;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string/jumbo v1, "null"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1
.end method
