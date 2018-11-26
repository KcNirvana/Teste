.class public Lcom/miui/applicationlock/utils/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private aaW:Z

.field private aaX:Ljava/lang/String;

.field private aaY:Ljava/lang/Integer;

.field private aaZ:Z

.field private aba:I

.field private abb:Ljava/lang/String;

.field private abc:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Integer;Ljava/lang/String;I)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/applicationlock/utils/c;->aaX:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/applicationlock/utils/c;->aaY:Ljava/lang/Integer;

    iput-object p3, p0, Lcom/miui/applicationlock/utils/c;->abb:Ljava/lang/String;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/miui/applicationlock/utils/c;->aaZ:Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/miui/applicationlock/utils/c;->abc:Z

    iput p4, p0, Lcom/miui/applicationlock/utils/c;->aba:I

    return-void
.end method


# virtual methods
.method public adW()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/c;->aaX:Ljava/lang/String;

    return-object v0
.end method

.method public adX()Ljava/lang/Integer;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/c;->aaY:Ljava/lang/Integer;

    return-object v0
.end method

.method public adY()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/utils/c;->abc:Z

    return v0
.end method

.method public adZ()I
    .locals 1

    iget v0, p0, Lcom/miui/applicationlock/utils/c;->aba:I

    return v0
.end method

.method public aea()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/applicationlock/utils/c;->abb:Ljava/lang/String;

    return-object v0
.end method

.method public aeb()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/utils/c;->aaZ:Z

    return v0
.end method

.method public aec()Z
    .locals 1

    iget-boolean v0, p0, Lcom/miui/applicationlock/utils/c;->aaW:Z

    return v0
.end method

.method public aed(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/utils/c;->aaZ:Z

    return-void
.end method

.method public aee(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/utils/c;->aaW:Z

    return-void
.end method

.method public aef(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/miui/applicationlock/utils/c;->abc:Z

    return-void
.end method
