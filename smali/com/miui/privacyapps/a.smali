.class public Lcom/miui/privacyapps/a;
.super Ljava/lang/Object;
.source ""


# instance fields
.field private bce:I

.field private bcf:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public byD()I
    .locals 1

    iget v0, p0, Lcom/miui/privacyapps/a;->bce:I

    return v0
.end method

.method public byE()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/miui/privacyapps/a;->bcf:Ljava/lang/String;

    return-object v0
.end method

.method public byF(I)V
    .locals 0

    iput p1, p0, Lcom/miui/privacyapps/a;->bce:I

    return-void
.end method

.method public byG(Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/privacyapps/a;->bcf:Ljava/lang/String;

    return-void
.end method
