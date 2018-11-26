.class public Lcom/miui/antivirus/model/a;
.super Lcom/miui/antivirus/model/g;
.source ""


# instance fields
.field private mTotalCount:I


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/model/g;-><init>()V

    return-void
.end method

.method public constructor <init>(Lcom/miui/antivirus/model/AbsModel$ItemGroup;Ljava/lang/String;Ljava/lang/String;I)V
    .locals 0

    invoke-direct {p0}, Lcom/miui/antivirus/model/g;-><init>()V

    iput-object p1, p0, Lcom/miui/antivirus/model/a;->alL:Lcom/miui/antivirus/model/AbsModel$ItemGroup;

    iput-object p2, p0, Lcom/miui/antivirus/model/a;->alM:Ljava/lang/String;

    iput-object p3, p0, Lcom/miui/antivirus/model/a;->alN:Ljava/lang/String;

    iput p4, p0, Lcom/miui/antivirus/model/a;->mTotalCount:I

    return-void
.end method
