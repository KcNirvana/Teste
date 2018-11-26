.class public Lcom/miui/antispam/policy/PolicyUtils/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field public Yq:I

.field public Yr:Ljava/lang/String;

.field public Ys:Ljava/lang/String;

.field public Yt:Ljava/lang/String;

.field public Yu:Z

.field public Yv:Z

.field public Yw:Z

.field public state:I


# direct methods
.method public constructor <init>(Ljava/lang/String;IILjava/lang/String;ZZZ)V
    .locals 5

    const/4 v4, 0x3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/antispam/policy/PolicyUtils/a;->Yt:Ljava/lang/String;

    iput p2, p0, Lcom/miui/antispam/policy/PolicyUtils/a;->Yq:I

    iput p3, p0, Lcom/miui/antispam/policy/PolicyUtils/a;->state:I

    iput-object p4, p0, Lcom/miui/antispam/policy/PolicyUtils/a;->Yr:Ljava/lang/String;

    iput-boolean p5, p0, Lcom/miui/antispam/policy/PolicyUtils/a;->Yu:Z

    iput-boolean p6, p0, Lcom/miui/antispam/policy/PolicyUtils/a;->Yw:Z

    iput-boolean p7, p0, Lcom/miui/antispam/policy/PolicyUtils/a;->Yv:Z

    invoke-static {p1}, Lcom/miui/antispam/util/h;->XQ(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    iget-object v0, p0, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-le v0, v4, :cond_0

    const-string/jumbo v0, "AntiSpamTest"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Normalized number is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "*****"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    iget-object v3, p0, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x3

    iget-object v4, p0, Lcom/miui/antispam/policy/PolicyUtils/a;->Ys:Ljava/lang/String;

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method
