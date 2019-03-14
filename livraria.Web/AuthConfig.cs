﻿using Microsoft.IdentityModel.Tokens;
using System.Security.Cryptography;

namespace livraria.Web
{
    public class AuthConfig
    {
        public SecurityKey Key { get; }
        public SigningCredentials SigningCredentials { get; }

        public AuthConfig()
        {
            using (var provider = new RSACryptoServiceProvider(2048))
            {
                Key = new RsaSecurityKey(provider.ExportParameters(true));
            }

            SigningCredentials = new SigningCredentials(
                Key, SecurityAlgorithms.RsaSha256Signature);
        }
    }
}
