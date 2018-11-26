.class Lcom/miui/antivirus/utils/j;
.super Lcom/miui/antivirus/utils/i;
.source ""


# instance fields
.field final synthetic this$0:Lcom/miui/antivirus/utils/g;


# direct methods
.method public constructor <init>(Lcom/miui/antivirus/utils/g;Ljava/io/ByteArrayOutputStream;)V
    .locals 0

    iput-object p1, p0, Lcom/miui/antivirus/utils/j;->this$0:Lcom/miui/antivirus/utils/g;

    invoke-direct {p0, p1, p2}, Lcom/miui/antivirus/utils/i;-><init>(Lcom/miui/antivirus/utils/g;Ljava/io/OutputStream;)V

    return-void
.end method


# virtual methods
.method public reset()V
    .locals 1

    iget-object v0, p0, Lcom/miui/antivirus/utils/j;->aoF:Ljava/io/OutputStream;

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->reset()V

    return-void
.end method
