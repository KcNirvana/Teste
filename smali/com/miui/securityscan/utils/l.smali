.class Lcom/miui/securityscan/utils/l;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field private name:Ljava/lang/String;

.field private value:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/utils/l;->name:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/securityscan/utils/l;->value:Ljava/lang/String;

    return-void
.end method

.method static synthetic Jy(Lcom/miui/securityscan/utils/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/utils/l;->name:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Jz(Lcom/miui/securityscan/utils/l;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/utils/l;->value:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public Jx(Lcom/miui/securityscan/utils/l;)I
    .locals 2

    iget-object v0, p0, Lcom/miui/securityscan/utils/l;->name:Ljava/lang/String;

    iget-object v1, p1, Lcom/miui/securityscan/utils/l;->name:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/String;->compareTo(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compareTo(Ljava/lang/Object;)I
    .locals 1

    check-cast p1, Lcom/miui/securityscan/utils/l;

    invoke-virtual {p0, p1}, Lcom/miui/securityscan/utils/l;->Jx(Lcom/miui/securityscan/utils/l;)I

    move-result v0

    return v0
.end method
