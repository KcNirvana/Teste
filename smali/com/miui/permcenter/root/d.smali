.class public Lcom/miui/permcenter/root/d;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private OM:Lcom/miui/permcenter/root/RootHeaderType;

.field private ON:Ljava/util/ArrayList;

.field private mHeaderTitle:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public PC(Lcom/miui/permcenter/root/RootHeaderType;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/root/d;->OM:Lcom/miui/permcenter/root/RootHeaderType;

    return-void
.end method

.method public PD(Ljava/util/ArrayList;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/root/d;->ON:Ljava/util/ArrayList;

    return-void
.end method

.method public PE()Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/root/d;->ON:Ljava/util/ArrayList;

    return-object v0
.end method

.method public PF()Lcom/miui/permcenter/root/RootHeaderType;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/root/d;->OM:Lcom/miui/permcenter/root/RootHeaderType;

    return-object v0
.end method

.method public getHeaderTitle()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/permcenter/root/d;->mHeaderTitle:Ljava/lang/String;

    return-object v0
.end method

.method public setHeaderTitle(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/permcenter/root/d;->mHeaderTitle:Ljava/lang/String;

    return-void
.end method
