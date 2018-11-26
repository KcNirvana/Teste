.class public Lcom/miui/securityscan/utils/e;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private IT:Z

.field private IU:Ljava/lang/String;

.field private IV:Ljava/lang/String;

.field private description:Ljava/lang/String;

.field private path:Ljava/lang/String;

.field private visible:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/utils/e;->path:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/securityscan/utils/e;->description:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/securityscan/utils/e;->IU:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public IC()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/utils/e;->path:Ljava/lang/String;

    if-nez v0, :cond_0

    const-string/jumbo v0, ""

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/miui/securityscan/utils/e;->path:Ljava/lang/String;

    goto :goto_0
.end method

.method public ID()Z
    .locals 2

    const-string/jumbo v0, "mounted"

    iget-object v1, p0, Lcom/miui/securityscan/utils/e;->IU:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public IE()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/securityscan/utils/e;->IT:Z

    return v0
.end method

.method public IF(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/utils/e;->path:Ljava/lang/String;

    return-void
.end method

.method public IG(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/utils/e;->IT:Z

    return-void
.end method

.method public IH(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/securityscan/utils/e;->IV:Ljava/lang/String;

    return-void
.end method

.method public setVisible(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/securityscan/utils/e;->visible:Z

    return-void
.end method
