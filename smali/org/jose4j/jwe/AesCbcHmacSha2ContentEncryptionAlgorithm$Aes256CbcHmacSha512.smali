.class public Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm$Aes256CbcHmacSha512;
.super Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
.source "AesCbcHmacSha2ContentEncryptionAlgorithm.java"

# interfaces
.implements Lorg/jose4j/jwe/ContentEncryptionAlgorithm;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Aes256CbcHmacSha512"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 4

    const-string v0, "A256CBC-HS512"

    const/16 v1, 0x40

    const-string v2, "HmacSHA512"

    const/16 v3, 0x20

    .line 224
    invoke-direct {p0, v0, v1, v2, v3}, Lorg/jose4j/jwe/AesCbcHmacSha2ContentEncryptionAlgorithm;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    return-void
.end method
