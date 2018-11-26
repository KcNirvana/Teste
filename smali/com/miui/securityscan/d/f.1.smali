.class public Lcom/miui/securityscan/d/f;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private Kc:Lcom/miui/antivirus/result/Advertisement;

.field private Kd:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/miui/antivirus/result/Advertisement;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/miui/securityscan/d/f;->Kd:Ljava/lang/String;

    iput-object p2, p0, Lcom/miui/securityscan/d/f;->Kc:Lcom/miui/antivirus/result/Advertisement;

    return-void
.end method

.method static synthetic LA(Lcom/miui/securityscan/d/f;)Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/d/f;->Kd:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic Lz(Lcom/miui/securityscan/d/f;)Lcom/miui/antivirus/result/Advertisement;
    .locals 1

    iget-object v0, p0, Lcom/miui/securityscan/d/f;->Kc:Lcom/miui/antivirus/result/Advertisement;

    return-object v0
.end method
