.class public Lcom/miui/securityscan/scanner/c;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Cx:I

.field public Cy:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

.field public Cz:I

.field public desc:Ljava/lang/String;

.field public index:I


# direct methods
.method public constructor <init>(IILjava/lang/String;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/miui/securityscan/scanner/SecurityManager$ScanState;->Df:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    iput-object v0, p0, Lcom/miui/securityscan/scanner/c;->Cy:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    iput p1, p0, Lcom/miui/securityscan/scanner/c;->index:I

    iput p2, p0, Lcom/miui/securityscan/scanner/c;->Cz:I

    iput-object p3, p0, Lcom/miui/securityscan/scanner/c;->desc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/scanner/SecurityManager$ScanState;)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/scanner/c;->Cy:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    iput v0, p0, Lcom/miui/securityscan/scanner/c;->index:I

    iput v0, p0, Lcom/miui/securityscan/scanner/c;->Cz:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/c;->desc:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/miui/securityscan/scanner/SecurityManager$ScanState;I)V
    .locals 1

    const/4 v0, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/scanner/c;->Cy:Lcom/miui/securityscan/scanner/SecurityManager$ScanState;

    iput v0, p0, Lcom/miui/securityscan/scanner/c;->index:I

    iput v0, p0, Lcom/miui/securityscan/scanner/c;->Cz:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/miui/securityscan/scanner/c;->desc:Ljava/lang/String;

    iput p2, p0, Lcom/miui/securityscan/scanner/c;->Cx:I

    return-void
.end method


# virtual methods
.method public DH()I
    .locals 1

    iget v0, p0, Lcom/miui/securityscan/scanner/c;->Cx:I

    return v0
.end method
