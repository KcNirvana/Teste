.class final Lcom/miui/applicationlock/J;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic ajp:Lcom/miui/applicationlock/FirstUseAppLockActivity;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/FirstUseAppLockActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/J;->ajp:Lcom/miui/applicationlock/FirstUseAppLockActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apz(Lcom/miui/applicationlock/utils/c;Lcom/miui/applicationlock/utils/c;)I
    .locals 1

    invoke-virtual {p1}, Lcom/miui/applicationlock/utils/c;->aeb()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p2}, Lcom/miui/applicationlock/utils/c;->aeb()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, -0x1

    return v0

    :cond_0
    invoke-virtual {p1}, Lcom/miui/applicationlock/utils/c;->aeb()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p2}, Lcom/miui/applicationlock/utils/c;->aeb()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/applicationlock/utils/c;

    check-cast p2, Lcom/miui/applicationlock/utils/c;

    invoke-virtual {p0, p1, p2}, Lcom/miui/applicationlock/J;->apz(Lcom/miui/applicationlock/utils/c;Lcom/miui/applicationlock/utils/c;)I

    move-result v0

    return v0
.end method
