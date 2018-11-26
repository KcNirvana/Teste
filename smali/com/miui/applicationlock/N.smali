.class final Lcom/miui/applicationlock/N;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/util/Comparator;


# instance fields
.field final synthetic ajt:Lcom/miui/applicationlock/M;


# direct methods
.method constructor <init>(Lcom/miui/applicationlock/M;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/applicationlock/N;->ajt:Lcom/miui/applicationlock/M;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public apA(Landroid/util/Pair;Landroid/util/Pair;)I
    .locals 2

    iget-object v0, p1, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    iget-object v0, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    sub-int v0, v1, v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Landroid/util/Pair;

    check-cast p2, Landroid/util/Pair;

    invoke-virtual {p0, p1, p2}, Lcom/miui/applicationlock/N;->apA(Landroid/util/Pair;Landroid/util/Pair;)I

    move-result v0

    return v0
.end method
