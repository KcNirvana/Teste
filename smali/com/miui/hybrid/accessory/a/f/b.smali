.class public Lcom/miui/hybrid/accessory/a/f/b;
.super Ljava/lang/Object;


# instance fields
.field private final bhP:Lcom/miui/hybrid/accessory/a/f/b/c;

.field private final bhQ:Lcom/miui/hybrid/accessory/a/f/c/a;


# direct methods
.method public constructor <init>()V
    .locals 1

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/b/a$a;

    invoke-direct {v0}, Lcom/miui/hybrid/accessory/a/f/b/a$a;-><init>()V

    invoke-direct {p0, v0}, Lcom/miui/hybrid/accessory/a/f/b;-><init>(Lcom/miui/hybrid/accessory/a/f/b/g;)V

    return-void
.end method

.method public constructor <init>(Lcom/miui/hybrid/accessory/a/f/b/g;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/miui/hybrid/accessory/a/f/c/a;

    invoke-direct {v0}, Lcom/miui/hybrid/accessory/a/f/c/a;-><init>()V

    iput-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b;->bhQ:Lcom/miui/hybrid/accessory/a/f/c/a;

    iget-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b;->bhQ:Lcom/miui/hybrid/accessory/a/f/c/a;

    invoke-interface {p1, v0}, Lcom/miui/hybrid/accessory/a/f/b/g;->bDr(Lcom/miui/hybrid/accessory/a/f/c/b;)Lcom/miui/hybrid/accessory/a/f/b/c;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b;->bhP:Lcom/miui/hybrid/accessory/a/f/b/c;

    return-void
.end method


# virtual methods
.method public bDA(Lcom/miui/hybrid/accessory/a/f/a;[B)V
    .locals 2

    :try_start_0
    iget-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b;->bhQ:Lcom/miui/hybrid/accessory/a/f/c/a;

    invoke-virtual {v0, p2}, Lcom/miui/hybrid/accessory/a/f/c/a;->a([B)V

    iget-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b;->bhP:Lcom/miui/hybrid/accessory/a/f/b/c;

    invoke-interface {p1, v0}, Lcom/miui/hybrid/accessory/a/f/a;->bCb(Lcom/miui/hybrid/accessory/a/f/b/c;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    iget-object v0, p0, Lcom/miui/hybrid/accessory/a/f/b;->bhP:Lcom/miui/hybrid/accessory/a/f/b/c;

    invoke-virtual {v0}, Lcom/miui/hybrid/accessory/a/f/b/c;->s()V

    return-void

    :catchall_0
    move-exception v0

    iget-object v1, p0, Lcom/miui/hybrid/accessory/a/f/b;->bhP:Lcom/miui/hybrid/accessory/a/f/b/c;

    invoke-virtual {v1}, Lcom/miui/hybrid/accessory/a/f/b/c;->s()V

    throw v0
.end method
