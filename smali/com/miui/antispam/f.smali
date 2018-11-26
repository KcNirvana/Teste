.class final Lcom/miui/antispam/f;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic aaR:Lcom/miui/antispam/e;


# direct methods
.method constructor <init>(Lcom/miui/antispam/e;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antispam/f;->aaR:Lcom/miui/antispam/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public adI(Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;)I
    .locals 2

    iget v0, p1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->weight:I

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    iget v1, p2, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;->weight:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Integer;->compareTo(Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    check-cast p2, Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;

    invoke-virtual {p0, p1, p2}, Lcom/miui/antispam/f;->adI(Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;Lcom/miui/antispam/policy/PolicyUtils/PolicyConfig$PolicyDesc;)I

    move-result v0

    return v0
.end method
