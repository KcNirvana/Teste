.class public Lcom/miui/powercenter/model/c;
.super Lcom/miui/powercenter/model/b;
.source ""


# instance fields
.field private mTotalCount:I


# direct methods
.method public constructor <init>(Lcom/miui/powercenter/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/powercenter/model/b;-><init>()V

    iput-object p1, p0, Lcom/miui/powercenter/model/c;->aIx:Lcom/miui/powercenter/model/AbsModel$ItemGroup;

    iput-object p2, p0, Lcom/miui/powercenter/model/c;->aIz:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/powercenter/model/c;->aIy:Ljava/lang/String;

    iput p4, p0, Lcom/miui/powercenter/model/c;->mTotalCount:I

    return-void
.end method
