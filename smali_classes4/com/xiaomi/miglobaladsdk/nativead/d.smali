.class Lcom/xiaomi/miglobaladsdk/nativead/d;
.super Ljava/lang/Object;
.source "RequestLoadingStatus.java"


# instance fields
.field private a:I

.field private final b:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/d;->a:I

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/d;->b:Ljava/util/Vector;

    return-void
.end method


# virtual methods
.method a()I
    .locals 3

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/d;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    iget v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/d;->a:I

    const/4 v2, 0x0

    if-eq v0, v1, :cond_0

    return v2

    :cond_0
    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/d;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-nez v1, :cond_1

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_2
    return v2
.end method

.method a(I)V
    .locals 3

    iput p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/d;->a:I

    iget-object p1, p0, Lcom/xiaomi/miglobaladsdk/nativead/d;->b:Ljava/util/Vector;

    invoke-virtual {p1}, Ljava/util/Vector;->clear()V

    const/4 p1, 0x0

    const/4 v0, 0x0

    :goto_0
    iget v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/d;->a:I

    if-ge v0, v1, :cond_0

    iget-object v1, p0, Lcom/xiaomi/miglobaladsdk/nativead/d;->b:Ljava/util/Vector;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_0
    return-void
.end method

.method a(IZ)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/d;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/d;->b:Ljava/util/Vector;

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Ljava/util/Vector;->set(ILjava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method b(I)Z
    .locals 1

    if-ltz p1, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/d;->b:Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->size()I

    move-result v0

    if-ge p1, v0, :cond_0

    iget-object v0, p0, Lcom/xiaomi/miglobaladsdk/nativead/d;->b:Ljava/util/Vector;

    invoke-virtual {v0, p1}, Ljava/util/Vector;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
